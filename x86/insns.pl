#!/usr/bin/perl
## --------------------------------------------------------------------------
##
##   Copyright 1996-2024 The NASM Authors - All Rights Reserved
##   See the file AUTHORS included with the NASM distribution for
##   the specific copyright holders.
##
##   Redistribution and use in source and binary forms, with or without
##   modification, are permitted provided that the following
##   conditions are met:
##
##   * Redistributions of source code must retain the above copyright
##     notice, this list of conditions and the following disclaimer.
##   * Redistributions in binary form must reproduce the above
##     copyright notice, this list of conditions and the following
##     disclaimer in the documentation and/or other materials provided
##     with the distribution.
##
##     THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
##     CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
##     INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
##     MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
##     DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
##     CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
##     SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
##     NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
##     LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
##     HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
##     CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
##     OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
##     EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
##
## --------------------------------------------------------------------------

#
# insns.pl
#
# Parse insns.dat and produce generated source code files
#
# See x86/bytecode.txt for the defintion of the byte code
# output to x86/insnsb.c.
#

require 'x86/insns-iflags.ph';

# Opcode prefixes which need their own opcode tables
# LONGER PREFIXES FIRST!
@disasm_prefixes = qw(0F24 0F25 0F38 0F3A 0F7A 0FA6 0FA7 0F);

# This should match MAX_OPERANDS from nasm.h
$MAX_OPERANDS = 5;

# Add VEX/XOP prefixes
@vex_class = ( 'vex', 'xop', 'evex' );
$vex_classes = scalar(@vex_class);
@vexlist = ();
%vexmap = ();
for ($c = 0; $c < $vex_classes; $c++) {
    $vexmap{$vex_class[$c]} = $c;
    for ($m = 0; $m < 32; $m++) {
        for ($p = 0; $p < 4; $p++) {
            push(@vexlist, sprintf("%s%02X%01X", $vex_class[$c], $m, $p));
        }
    }
}
@disasm_prefixes = (@vexlist, @disasm_prefixes, '');
%disasm_prefixes = map { $_ => 1 } @disasm_prefixes;

@bytecode_count = (0) x 256;

# Push to an array reference, creating the array if needed
sub xpush($@) {
    my $ref = shift @_;

    $$ref = [] unless (defined($$ref));
    return push(@$$ref, @_);
}

# Generate relaxed form patterns if applicable
# * is used for an optional source operand, duplicating the previous one
#   in the encoding if it is missing.
# ? is used for an optional destination operand which is not encoded if
#   missing; if combined evex.ndx set the nd bit if present.
sub relaxed_forms(@) {
    my @field_list = @_;

    foreach my $fields (@_) {
	next unless ($fields->[1] =~ /[\*\?]/);

	# This instruction has relaxed form(s)
	if ($fields->[2] !~ /^(\[\s*)(\S+)(\s*:.*\])$/) {
	    warn "$fname:$line: has an * operand but uses raw bytecodes\n";
	    next;
	}
	my @f2o = ($1, $2, $3);

	my $opmask = 0;
	my $ndmask = 0;
	my $ndflag = 0;
	my @ops = split(/,/, $fields->[1]);
	for (my $oi = 0; $oi < scalar @ops; $oi++) {
	    if ($ops[$oi] =~ /\*$/) {
		if ($oi == 0) {
		    warn "$fname:$line: has a first operand with a *\n";
		    next;
		}
		$opmask |= 1 << $oi;
	    } elsif ($ops[$oi] =~ /\?$/) {
		$opmask |= 1 << $oi;
		$ndmask |= 1 << $oi;
		$ndflag = 1;
	    }
	}

	# If .ndx is present, then change it to .nd0 or .nd1
	# Set to .nd0 if no ndmask fields are present, otherwise 1
	$fields->[2] =~ s/(\.nd)x\b/$1$ndflag/;

	for (my $oi = 1; $oi < (1 << scalar @ops); $oi++) {
	    if (($oi & ~$opmask) == 0) {
		my @xops = ();
		my $ndflag = 0;
		my $relax = 0;
		my $rbit = 1;
		my $ondflag = $ndflag;
		my $f2 = $f2o[0];
		for (my $oj = 0; $oj < scalar(@ops); $oj++) {
		    my $ob = 1 << $oj;
		    if ($ob & $ndmask & $oi) {
			# Make it disappear completely
			$ondflag = 0;
		    } else {
			if ($ob & ~$oi) {
			    push(@xops, $ops[$oj]);
			} else {
			    $relax |= $rbit;
			}
			$rbit <<= 1;
			$f2 .= substr($f2o[1], $oj, 1);
		    }
		}
		$f2 .= $f2o[2];
		my @ff = @$fields;
		$ff[1] = join(',', @xops);
		$f2 =~ s/(\.nd)x\b/$1$ondflag/;
		$ff[2] = $f2;
		$ff[4] = $relax;
		push(@field_list, [@ff]);
	    }
	}
    }

    return @field_list;
}

# Condition codes.
my $c_ccmask = 0x0f;
my $c_nd     = 0x10;		# Not for the disassembler
my $c_cc     = 0x20;		# cc only (not scc)
my $c_scc    = 0x40;		# scc only (not cc)
my %conds = (
    'o'   =>  0,             'no'  =>  1,        'c'   =>  2,        'nc'  =>  3,
    'z'   =>  4,             'nz'  =>  5,        'na'  =>  6,        'a'   =>  7,
    's'   =>  8,             'ns'  =>  9,
    'pe'  => 10|$c_cc,       'po'  => 11|$c_cc,
    'f'   => 10|$c_scc,      't'   => 11|$c_scc,
    'l'   => 12,             'nl'  => 13,        'ng'  => 14,        'g'   => 15,

    'ae'  =>  3|$c_nd,       'b'   =>  2|$c_nd,  'be'  =>  6|$c_nd,  'e'   =>  4|$c_nd,
    'ge'  => 13|$c_nd,       'le'  => 14|$c_nd,  'nae' =>  2|$c_nd,  'nb'  =>  3|$c_nd,
    'nbe' =>  7|$c_nd,       'ne'  =>  5|$c_nd,  'nge' => 12|$c_nd,  'nle' => 15|$c_nd,
    'np'  => 11|$c_nd|$c_cc, 'p'   => 10|$c_nd|$c_cc );

my @conds = sort keys(%conds);

# Generate conditional form patterns if applicable
sub conditional_forms(@) {
    my @field_list = ();

    foreach my $fields (@_) {
	# This is a case sensitive match!
	if ($fields->[0] !~ /s?cc/) {
	    # Not a conditional instruction pattern
	    push(@field_list, $fields);
	    next;
	}

	if ($fields->[2] !~ /^\[/) {
	    warn "$fname:$line: conditional instruction using raw bytecodes\n";
	    next;
	}

	my $exclude_mask = ($fields->[0] =~ /scc/ ? $c_cc : $c_scc);

	foreach my $cc (@conds) {
	    my $ccval = $conds{$cc};
	    next if ($ccval & $exclude_mask);

	    my @ff = @$fields;

	    $ff[0] =~ s/s?cc/\U$cc/;

	    if ($ff[2] =~ /^(\[.*?)\b([0-9a-f]{2})\+c\b(.*\])$/) {
		$ff[2] = $1.sprintf('%02x', hex($2)^($ccval & $c_ccmask)).$3;
	    } elsif ($ff[2] =~ /^(\[.*?\.scc\b)(.*\])$/) {
		$ff[2] = $1.sprintf('%d', $ccval & $c_ccmask).$2;
	    } else {
		my $eerr = $ff[2];
		warn "$fname:$line: invalid conditional encoding: $eerr\n";
		next;
	    }

	    if (($ccval & $c_nd) && !($ff[3] =~ /\bND\b/)) {
		$ff[3] .= ',ND';
	    }

	    push(@field_list, [@ff]);
	}
    }
    return @field_list;
}

print STDERR "Reading insns.dat...\n";

@args   = ();
undef $output;
foreach $arg ( @ARGV ) {
    if ( $arg =~ /^\-/ ) {
        if  ( $arg =~ /^\-([abdin]|f[hc])$/ ) {
            $output = $1;
        } else {
            die "$0: Unknown option: ${arg}\n";
        }
    } else {
        push (@args, $arg);
    }
}

die if (scalar(@args) != 2);	# input output
($fname, $oname) = @args;

open(F, '<', $fname) || die "unable to open $fname";

%dinstables = ();
@bytecode_list = ();
%aname = ();

$line = 0;
$insns = 0;
$n_opcodes = 0;
my @allpatterns = ();

while (<F>) {
    $line++;
    chomp;
    next if ( /^\s*(\;.*|)$/ );   # comments or blank lines

    unless (/^\s*(\S+)\s+(\S+)\s+(\S+|\[.*\])\s+(\S+)\s*$/) {
        warn "line $line does not contain four fields\n";
        next;
    }
    my @field_list = ([$1, $2, $3, uc($4), 0]);
    @field_list = relaxed_forms(@field_list);
    @field_list = conditional_forms(@field_list);

    foreach my $fields (@field_list) {
        ($formatted, $nd) = format_insn(@$fields);
        if ($formatted) {
            $insns++;
	    xpush(\$aname{$fields->[0]}, $formatted);
        }
	if (!defined($k_opcodes{$fields->[0]})) {
	    $k_opcodes{$fields->[0]} = $n_opcodes++;
	}
        if ($formatted && !$nd) {
            push @big, $formatted;
            my @sseq = startseq($fields->[2], $fields->[4]);
            foreach my $i (@sseq) {
                xpush(\$dinstables{$i}, $#big);
            }
        }
    }
}

close F;

#
# Generate the bytecode array.  At this point, @bytecode_list contains
# the full set of bytecodes.
#

# Sort by descending length
@bytecode_list = sort { scalar(@$b) <=> scalar(@$a) } @bytecode_list;
@bytecode_array = ();
%bytecode_pos = ();
$bytecode_next = 0;
foreach $bl (@bytecode_list) {
    my $h = hexstr(@$bl);
    next if (defined($bytecode_pos{$h}));

    push(@bytecode_array, $bl);
    while ($h ne '') {
        $bytecode_pos{$h} = $bytecode_next;
        $h = substr($h, 2);
        $bytecode_next++;
    }
}
undef @bytecode_list;

@opcodes = sort { $k_opcodes{$a} <=> $k_opcodes{$b} } keys(%k_opcodes);

if ( $output eq 'b') {
    print STDERR "Writing $oname...\n";

    open(B, '>', $oname);

    print B "/* This file auto-generated from insns.dat by insns.pl" .
        " - don't edit it */\n\n";

    print B "#include \"nasm.h\"\n";
    print B "#include \"insns.h\"\n\n";

    print B "const uint8_t nasm_bytecodes[$bytecode_next] = {\n";

    $p = 0;
    foreach $bl (@bytecode_array) {
        printf B "    /* %5d */ ", $p;
        foreach $d (@$bl) {
            printf B "%#o,", $d;
            $p++;
        }
        printf B "\n";
    }
    print B "};\n";

    print B "\n";
    print B "/*\n";
    print B " * Bytecode frequencies (including reuse):\n";
    print B " *\n";
    for ($i = 0; $i < 32; $i++) {
        print B " *";
        for ($j = 0; $j < 256; $j += 32) {
            print B " |" if ($j);
            printf B " %3o:%4d", $i+$j, $bytecode_count[$i+$j];
        }
        print B "\n";
    }
    print B " */\n";

    close B;
}

if ( $output eq 'a' ) {
    print STDERR "Writing $oname...\n";

    open(A, '>', $oname);

    print A "/* This file auto-generated from insns.dat by insns.pl" .
        " - don't edit it */\n\n";

    print A "#include \"nasm.h\"\n";
    print A "#include \"insns.h\"\n\n";

    foreach $i (@opcodes) {
        print A "static const struct itemplate instrux_${i}[] = {\n";
        foreach $j (@{$aname{$i}}) {
            print A "    ", codesubst($j), "\n";
	    print A "        /* ", show_bytecodes($j), " */\n";
        }
        print A "    ITEMPLATE_END\n};\n\n";
    }
    print A "const struct itemplate * const nasm_instructions[] = {\n";
    foreach $i (@opcodes) {
        print A "    instrux_${i},\n";
    }
    print A "};\n";

    close A;
}

if ( $output eq 'd' ) {
    print STDERR "Writing $oname...\n";

    open(D, '>', $oname);

    print D "/* This file auto-generated from insns.dat by insns.pl" .
        " - don't edit it */\n\n";

    print D "#include \"nasm.h\"\n";
    print D "#include \"insns.h\"\n\n";

    print D "static const struct itemplate instrux[] = {\n";
    $n = 0;
    foreach $j (@big) {
        printf D "    /* %4d */ %s\n", $n++, codesubst($j);
    }
    print D "};\n";

    foreach $h (sort(keys(%dinstables))) {
        next if ($h eq ''); # Skip pseudo-instructions
	print D "\nstatic const struct itemplate * const itable_${h}[] = {\n";
        foreach $j (@{$dinstables{$h}}) {
            print D "    instrux + $j,\n";
        }
        print D "};\n";
    }

    @prefix_list = ();
    foreach $h (@disasm_prefixes) {
        for ($c = 0; $c < 256; $c++) {
            $nn = sprintf("%s%02X", $h, $c);
            if ($is_prefix{$nn} || defined($dinstables{$nn})) {
                # At least one entry in this prefix table
                push(@prefix_list, $h);
                $is_prefix{$h} = 1;
                last;
            }
        }
    }

    foreach $h (@prefix_list) {
        print D "\n";
        print D "static " unless ($h eq '');
        print D "const struct disasm_index ";
        print D ($h eq '') ? 'itable' : "itable_$h";
        print D "[256] = {\n";
        for ($c = 0; $c < 256; $c++) {
            $nn = sprintf("%s%02X", $h, $c);
            if ($is_prefix{$nn}) {
		if ($dinstables{$nn}) {
		    print STDERR "$fname: ambiguous decoding, prefix $nn aliases:\n";
		    foreach my $dc (@{$dinstables{$nn}}) {
			print STDERR codesubst($big[$dc]), "\n";
		    }
		    exit 1;
		}
                printf D "    /* 0x%02x */ { itable_%s, -1 },\n", $c, $nn;
            } elsif ($dinstables{$nn}) {
                printf D "    /* 0x%02x */ { itable_%s, %u },\n", $c,
                       $nn, scalar(@{$dinstables{$nn}});
            } else {
                printf D "    /* 0x%02x */ { NULL, 0 },\n", $c;
            }
        }
        print D "};\n";
    }

    printf D "\nconst struct disasm_index * const itable_vex[NASM_VEX_CLASSES][32][4] =\n";
    print D "{\n";
    for ($c = 0; $c < $vex_classes; $c++) {
        print D "    {\n";
        for ($m = 0; $m < 32; $m++) {
            print D "        { ";
            for ($p = 0; $p < 4; $p++) {
                $vp = sprintf("%s%02X%01X", $vex_class[$c], $m, $p);
                printf D "%-15s",
                       ($is_prefix{$vp} ? sprintf("itable_%s,", $vp) : 'NULL,');
            }
            print D "},\n";
        }
        print D "    },\n";
    }
    print D "};\n";

    close D;
}

if ( $output eq 'i' ) {
    print STDERR "Writing $oname...\n";

    open(I, '>', $oname);

    print I "/* This file is auto-generated from insns.dat by insns.pl" .
        " - don't edit it */\n\n";
    print I "/* This file in included by nasm.h */\n\n";

    print I "/* Instruction names */\n\n";
    print I "#ifndef NASM_INSNSI_H\n";
    print I "#define NASM_INSNSI_H 1\n\n";
    print I "enum opcode {\n";
    $maxlen = 0;
    foreach $i (@opcodes) {
        print I "\tI_${i},\n";
        $len = length($i);
        $maxlen = $len if ( $len > $maxlen );
    }
    print I "\tI_none = -1\n";
    print I "};\n\n";
    print I "#define MAX_INSLEN ", $maxlen, "\n";
    print I "#define NASM_VEX_CLASSES ", $vex_classes, "\n";
    print I "#define NO_DECORATOR\t{", join(',',(0) x $MAX_OPERANDS), "}\n";
    print I "#endif /* NASM_INSNSI_H */\n";

    close I;
}

if ( $output eq 'n' ) {
    print STDERR "Writing $oname...\n";

    open(N, '>', $oname);

    print N "/* This file is auto-generated from insns.dat by insns.pl" .
        " - don't edit it */\n\n";
    print N "#include \"tables.h\"\n\n";

    print N "const char * const nasm_insn_names[] = {";
    foreach $i (@opcodes) {
        print N "\n\t\"\L$i\"";
	print N ',' if ($i < $#opcodes);
    }
    print N "\n};\n";
    close N;
}

if ( $output eq 'fh') {
    write_iflaggen_h();
}

if ( $output eq 'fc') {
    write_iflag_c();
}

printf STDERR "Done: %d instructions\n", $insns;

# Count primary bytecodes, for statistics
sub count_bytecodes(@) {
    my $skip = 0;
    foreach my $bc (@_) {
        if ($skip) {
            $skip--;
            next;
        }
        $bytecode_count[$bc]++;
        if ($bc >= 01 && $bc <= 04) {
            $skip = $bc;
        } elsif (($bc & ~03) == 010) {
            $skip = 1;
        } elsif (($bc & ~013) == 0144) {
            $skip = 1;
        } elsif ($bc == 0172 || $bc == 0173) {
            $skip = 1;
        } elsif (($bc & ~3) == 0260 || $bc == 0270) {   # VEX
            $skip = 2;
        } elsif (($bc & ~3) == 0240 || $bc == 0250) {   # EVEX
            $skip = 4;
        } elsif ($bc == 0330) {
            $skip = 1;
        }
    }
}

sub format_insn($$$$$) {
    my ($opcode, $operands, $codes, $flags, $relax) = @_;
    my $nd = 0;
    my ($num, $flagsindex);
    my @bytecode;
    my ($op, @ops, @opsize, $opp, @opx, @oppx, @decos, @opevex);

    return (undef, undef) if $operands eq "ignore";

    # Remember if we have an ARx flag
    my $arx = undef;

    # expand and uniqify the flags
    my %flags;
    foreach my $flag (split(',', $flags)) {
	next if ($flag eq '');

	if ($flag eq 'ND') {
	    $nd = 1;
	} else {
	    $flags{$flag}++;
	}

	if ($flag eq 'NEVER' || $flag eq 'NOP') {
	    # These flags imply OBSOLETE
	    $flags{'OBSOLETE'}++;
	}

	if ($flag =~ /^AR([0-9]+)$/) {
	    $arx = $1+0;
	}
    }

    # Generate byte code. This may modify the flags.
    @bytecode = (decodify($codes, $relax, \%flags), 0);
    push(@bytecode_list, [@bytecode]);
    $codes = hexstr(@bytecode);
    count_bytecodes(@bytecode);

    $flagsindex = insns_flag_index(keys %flags);
    die "$fname:$line: error in flags $flags\n" unless (defined($flagsindex));

    # Flags implying each other
    $flags->{'LONG'}++  if ($flags{'APX'});
    $flags->{'NOAPX'}++ if ($flags{'NOLONG'});

    # format the operands
    $operands =~ s/[\*\?]//g;
    $operands =~ s/:/|colon,/g;
    @ops = ();
    @opsize = ();
    @decos = ();
    if ($operands ne 'void') {
        foreach $op (split(/,/, $operands)) {
	    my $iszero = 0;
	    my $opsz = 0;
            @opx = ();
            @opevex = ();
            foreach $opp (split(/\|/, $op)) {
                @oppx = ();
                if ($opp =~ s/^(b(16|32|64)|mask|z|er|sae)$//) {
                    push(@opevex, $1);
                }

                if ($opp =~ s/([^0-9]0?)(8|16|32|64|80|128|256|512|1024|1k)$/$1/) {
                    push(@oppx, "bits$2");
		    $opsz = $1 + 0;
                }
		if ($opp =~ s/0$//) {
		    push(@oppx, 'rm_zero');
		    $iszero = 1;
		    if ($opp !~ /reg/) {
			$opp .= 'reg';
		    }
		}
                $opp =~ s/^mem$/memory/;
                $opp =~ s/^memory_offs$/mem_offs/;
		if ($opp =~ s/^(spec|imm)4$/$1/) {
		    push(@oppx, 'fourbits');
		}
		$opp =~ s/^spec$/immediate/; # Immediate or special immediate
                $opp =~ s/^imm$/imm_normal/; # Normal immediates only
		if ($opp =~ /^(unity|sbyted?word|[su]dword)$/) {
		    push(@oppx, 'imm_normal');
		}
                $opp =~ s/^([a-z]+)rm$/rm_$1/;
                $opp =~ s/^(rm|reg)$/$1_gpr/;
		$opp =~ s/^rm_k$/rm_opmask/;
		$opp =~ s/^kreg$/opmaskreg/;
		my $isreg = ($opp =~ /(\brm_|\breg_|reg\b)/);
		my $isvec = ($opp =~ /\b[xyzt]mm/);
		if ($isreg && !(($flags{'EVEX'} && $isvec) || !$flags{'NOAPX'})) {
		    # Register numbers >= 16 disallowed
		    push(@oppx, 'rn_l16');
		}
                push(@opx, $opp, @oppx) if $opp;
            }
            $op = join('|', @opx);
            push(@ops, $op);
	    push(@opsize, $opsz);
            push(@decos, (@opevex ? join('|', @opevex) : '0'));
        }
    }

    $num = scalar(@ops);
    while (scalar(@ops) < $MAX_OPERANDS) {
        push(@ops, '0');
	push(@opsize, 0);
        push(@decos, '0');
    }
    $operands = join(',', @ops);
    $operands =~ tr/a-z/A-Z/;

    $decorators = "{" . join(',', @decos) . "}";
    if ($decorators =~ /^{(0,)+0}$/) {
        $decorators = "NO_DECORATOR";
    }
    $decorators =~ tr/a-z/A-Z/;

    # Look for SM flags clearly inconsistent with operand bitsizes
    if ($flags{'SM'} || $flags{'SM2'} || $flags{'SM23'}) {
	my $ssize = 0;
	my $e = $flags{'SM2'} ? 2 : $MAX_OPERANDS;
	for (my $i = $flags{'SM23'} ? 1 : 0; $i < $e; $i++) {
	    next if (!$opsize[$i]);
	    if (!$ssize) {
		$ssize = $opsize[$i];
	    } elsif ($opsize[$i] != $ssize) {
		die "$fname:$line: inconsistent SM flag for argument $i\n";
	    }
	}
    }

    # Look for Sx flags that can never match operand bitsizes. If the
    # intent is to never match (require explicit sizes), use the SX flag.
    # This doesn't apply to registers that pre-define specific sizes;
    # this should really be derived from include/opflags.h...
    my %sflags = ( 'SB' => 8, 'SW' => 16, 'SD' => 32, 'SQ' => 64,
		   'SO' => 128, 'SY' => 256, 'SZ' => 512 );
    my $s = defined($arx) ? $arx : 0;
    my $e = defined($arx) ? $arx : $MAX_OPERANDS - 1;

    foreach my $sf (keys(%sflags)) {
	next if (!$flags{$sf});
	for (my $i = $s; $i <= $e; $i++) {
	    if ($opsize[$i] && $ops[$i] !~ /(\breg_|reg\b)/) {
		die "$fname:$line: inconsistent $sf flag for argument $i ($ops[$i])\n"
		    if ($opsize[$i] != $sflags{$sf});
	    }
	}
    }


    ("{I_$opcode, $num, {$operands}, $decorators, \@\@CODES-$codes\@\@, $flagsindex},", $nd);
}

#
# Look for @@CODES-xxx@@ sequences and replace them with the appropriate
# offset into nasm_bytecodes
#
sub codesubst($) {
    my($s) = @_;
    my $n;

    while ($s =~ /\@\@CODES-([0-9A-F]+)\@\@/) {
        my $pos = $bytecode_pos{$1};
        if (!defined($pos)) {
            die "$fname:$line: no position assigned to byte code $1\n";
        }
        $s = $` . "nasm_bytecodes+${pos}" . "$'";
    }
    return $s;
}
#
# Extract byte codes in human-friendly form; added as a comment
# to insnsa.c to help debugging
#
sub show_bytecodes($) {
    my($s) = @_;
    my @o = ();

    if ($s =~ /\@\@CODES-([0-9A-F]+)00\@\@/) {
	my $hstr = $1;
	my $literals = 0;
	my $hexlit = 0;
	for (my $i = 0; $i < length($hstr); $i += 2) {
	    my $c = hex(substr($hstr,$i,2));
	    if ($literals) {
		# Non-leading bytes
		$literals--;
		$o[-1] .= sprintf($hexlit ? '%02x' : '%03o', $c);
		$o[-1] .= $literals ? ' ' : ')';
	    } else {
		push(@o, sprintf("%03o", $c));
		if ($c <= 4) {
		    $literals = $c;
		    $hexlit = 1;
		} elsif (($c & ~3) == 0240 || $c == 0250) {
		    $literals = 3;
		    $hexlit = 1;
		} elsif (($c & ~3) == 0260 || $c == 0270) {
		    $literals = 2;
		    $hexlit = 0;
		} elsif ($c == 0171) {
		    $literals = 1;
		    $hexlit = 0;
		} elsif ($c == 0172) {
		    $literals = 1;
		    $hexlit = 1;
		}
		$o[-1] .= '(' if ($literals);
	    }
	}
	return join(' ', @o);
    } else {
	return 'no bytecode';
    }
}

sub addprefix ($@) {
    my ($prefix, @list) = @_;
    my $x;
    my @l = ();

    foreach $x (@list) {
        push(@l, sprintf("%s%02X", $prefix, $x));
    }

    return @l;
}

#
# Turn a code string into a sequence of bytes
#
sub decodify($$$) {
  # Although these are C-syntax strings, by convention they should have
  # only octal escapes (for directives) and hexadecimal escapes
  # (for verbatim bytes)
    my($codestr, $relax, $flags) = @_;

    if ($codestr =~ /^\s*\[([^\]]*)\]\s*$/) {
        return byte_code_compile($1, $relax, $flags);
    }

    my $c = $codestr;
    my @codes = ();

    unless ($codestr eq 'ignore') {
        while ($c ne '') {
            if ($c =~ /^\\x([0-9a-f]+)(.*)$/i) {
                push(@codes, hex $1);
                $c = $2;
                next;
            } elsif ($c =~ /^\\([0-7]{1,3})(.*)$/) {
                push(@codes, oct $1);
                $c = $2;
                next;
            } else {
                die "$fname:$line: unknown code format in \"$codestr\"\n";
            }
        }
    }

    return @codes;
}

# Turn a numeric list into a hex string
sub hexstr(@) {
    my $s = '';
    my $c;

    foreach $c (@_) {
        $s .= sprintf("%02X", $c);
    }
    return $s;
}

# Here we determine the range of possible starting bytes for a given
# instruction. We need only consider the codes:
# \[1234]      mean literal bytes, of course
# \1[0123]     mean byte plus register value
# \0 or \340   mean give up and return empty set
# \34[4567]    mean PUSH/POP of segment registers: special case
# \17[234]     skip is4 control byte
# \26x \270    skip VEX control bytes
# \24x \250    skip EVEX control bytes
sub startseq($$) {
    my ($codestr, $relax) = @_;
    my $word;
    my @codes = ();
    my $c = $codestr;
    my($c0, $c1, $i);
    my $prefix = '';

    @codes = decodify($codestr, $relax, {});

    while (defined($c0 = shift(@codes))) {
        $c1 = $codes[0];
        if ($c0 >= 01 && $c0 <= 04) {
            # Fixed byte string
            my $fbs = $prefix;
            while (defined($c0)) {
                if ($c0 >= 01 && $c0 <= 04) {
                    while ($c0--) {
                        $fbs .= sprintf("%02X", shift(@codes));
                    }
                } else {
                    last;
                }
                $c0 = shift(@codes);
            }

            foreach $pfx (@disasm_prefixes) {
		my $len = length($pfx);
                if (substr($fbs, 0, $len) eq $pfx) {
                    $prefix = $pfx;
                    $fbs = substr($fbs, $len, 2);
                    last;
                }
            }

            if ($fbs ne '') {
                return ($prefix.$fbs);
            }

            unshift(@codes, $c0);
        } elsif ($c0 >= 010 && $c0 <= 013) {
            return addprefix($prefix, $c1..($c1+7));
        } elsif (($c0 & ~013) == 0144) {
            return addprefix($prefix, $c1, $c1|2);
        } elsif ($c0 == 0 || $c0 == 0340) {
            return $prefix;
        } elsif (($c0 & ~3) == 0260 || $c0 == 0270) {
	    # VEX/XOP
            my($c,$m,$wlp);
            $m   = shift(@codes);
            $wlp = shift(@codes);
            $c = ($m >> 6);
            $m = $m & 31;
            $prefix .= sprintf('%s%02X%01X', $vex_class[$c], $m, $wlp & 3);
	} elsif (($c0 & ~3) == 0260 || $c0 == 0270) {
	    # EVEX
	    my @p;
	    push(@p, shift(@codes));
	    push(@p, shift(@codes));
	    push(@p, shift(@codes));
	    my $tuple = shift(@codes);
	    my $m = $p[0] & 7;
	    my $p = $p[1] & 3;
            $prefix .= sprintf('%s%02X%01X', 'evex', $m, $p);
        } elsif ($c0 >= 0172 && $c0 <= 173) {
            shift(@codes);      # Skip is4 control byte
        } else {
            # We really need to be able to distinguish "forbidden"
            # and "ignorable" codes here
        }
    }
    return ();
}

# EVEX tuple types offset is 0300. e.g. 0301 is for full vector(fv).
sub tupletype($) {
    my ($tuplestr) = @_;
    my %tuple_codes = (
        ''      => 000,
        'fv'    => 001,
        'hv'    => 002,
        'fvm'   => 003,
        't1s8'  => 004,
        't1s16' => 005,
        't1s'   => 006,
        't1f32' => 007,
        't1f64' => 010,
        't2'    => 011,
        't4'    => 012,
        't8'    => 013,
        'hvm'   => 014,
        'qvm'   => 015,
        'ovm'   => 016,
        'm128'  => 017,
        'dup'   => 020,
    );

    if (defined $tuple_codes{$tuplestr}) {
        return 0300 + $tuple_codes{$tuplestr};
    } else {
        die "$fname:$line: undefined tuple type : $tuplestr\n";
    }
}

#
# This function takes a series of byte codes in a format which is more
# typical of the Intel documentation, and encode it.
#
# The format looks like:
#
# [operands: opcodes]
#
# The operands word lists the order of the operands:
#
# r = register field in the modr/m
# m = modr/m
# v = VEX "v" field or DFV
# i = immediate
# s = register field of is4/imz2 field
# - = implicit (unencoded) operand
# x = indeX register of mib. 014..017 bytecodes are used.
#
# For an operand that should be filled into more than one field,
# enter it as e.g. "r+v".
#
sub byte_code_compile($$$) {
    my($str, $relax, $flags) = @_;
    my $opr;
    my $opc;
    my @codes = ();
    my $litix = undef;
    my %oppos = ();
    my $i;
    my ($op, $oq);
    my $opex;

    my %imm_codes = (
        'ib'        => 020,     # imm8
        'ib,u'      => 024,     # Unsigned imm8
        'iw'        => 030,     # imm16
        'ib,s'      => 0274,    # imm8 sign-extended to opsize or bits
        'iwd'       => 034,     # imm16 or imm32, depending on opsize
        'id'        => 040,     # imm32
        'id,s'      => 0254,    # imm32 sign-extended to 64 bits
        'iwdq'      => 044,     # imm16/32/64, depending on addrsize
        'rel8'      => 050,
        'iq'        => 054,
        'rel16'     => 060,
        'rel'       => 064,     # 16 or 32 bit relative operand
        'rel32'     => 070,
        'seg'       => 074,
    );
    my %plain_codes = (
        'o16'       => 0320,    # 16-bit operand size
        'o32'       => 0321,    # 32-bit operand size
        'odf'       => 0322,    # Operand size is default
        'o64'       => 0324,    # 64-bit operand size requiring REX.W
        'o64nw'     => 0323,    # Implied 64-bit operand size (no REX.W)
        'a16'       => 0310,
        'a32'       => 0311,
        'adf'       => 0312,    # Address size is default
        'a64'       => 0313,
        '!osp'      => 0364,
        '!asp'      => 0365,
        'f2i'       => 0332,    # F2 prefix, but 66 for operand size is OK
        'f3i'       => 0333,    # F3 prefix, but 66 for operand size is OK
        'mustrep'   => 0336,
        'mustrepne' => 0337,
        'rex.l'     => 0334,
        'norexb'    => 0314,
        'norexx'    => 0315,
        'norexr'    => 0316,
        'norexw'    => 0317,
        'repe'      => 0335,
        'nohi'      => 0325,    # Use spl/bpl/sil/dil even without REX
        'nof3'      => 0326,    # No REP 0xF3 prefix permitted
        'norep'     => 0331,    # No REP prefix permitted
        'wait'      => 0341,    # Needs a wait prefix
	'rex.b'	    => 0344,
	'rex.x'	    => 0345,
	'rex.r'	    => 0346,
	'rex.w'     => 0347,
        'resb'      => 0340,
        'np'        => 0360,    # No prefix
        'jcc8'      => 0370,    # Match only if Jcc possible with single byte
        'jmp8'      => 0371,    # Match only if JMP possible with single byte
        'jlen'      => 0373,    # Length of jump
        'hlexr'     => 0271,
        'hlenl'     => 0272,
        'hle'       => 0273,

        # This instruction takes XMM VSIB
        'vsibx'     => 0374,
        'vm32x'     => 0374,
        'vm64x'     => 0374,

        # This instruction takes YMM VSIB
        'vsiby'     => 0375,
        'vm32y'     => 0375,
        'vm64y'     => 0375,

        # This instruction takes ZMM VSIB
        'vsibz'     => 0376,
        'vm32z'     => 0376,
        'vm64z'     => 0376,
    );

    unless ($str =~ /^(([^\s:]*)\:*([^\s:]*)\:|)\s*(.*\S)\s*$/) {
        die "$fname:$line: cannot parse: [$str]\n";
    }
    $opr = lc($2);
    $tuple = lc($3);    # Tuple type for AVX512
    $opc = lc($4);

    $op = 0;
    for ($i = 0; $i < length($opr); $i++) {
        my $c = substr($opr,$i,1);
        if ($c eq '+') {
            $op--;
        } else {
            if ($relax & 1) {
                $op--;
            }
            $relax >>= 1;
            $oppos{$c} = $op++;
        }
    }
    $tup = tupletype($tuple);

    my $opmap = undef;

    my $last_imm = 'h';
    my $prefix_ok = 1;
    foreach $op (split(/\s*(?:\s|(?=[\/\\]))/, $opc)) {
        my $pc = $plain_codes{$op};

        if (defined $pc) {
            # Plain code
            push(@codes, $pc);
        } elsif ($prefix_ok && $op =~ /^(66|f2|f3)$/) {
            # 66/F2/F3 prefix used as an opcode extension
            if ($op eq '66') {
                push(@codes, 0361);
            } elsif ($op eq 'f2') {
                push(@codes, 0332);
            } else {
                push(@codes, 0333);
            }
	} elsif ($prefix_ok && $op =~ /^(0f|0f38|0f3a|m([0-3]))$/) {
	    if ($2 ne '') {
		$opmap = $2 + 0;
	    } elsif ($op eq '0f') {
		$opmap = 1;
	    } elsif ($op eq '0f38') {
		$opmap = 2;
	    } elsif ($op eq '0f3a') {
		$opmap = 3;
	    }
	    push(@codes, 0354 + $opmap) if ($opmap > 0);
	    $prefix_ok = 0;
	} elsif ($op =~ /^(m[0-9]+|0f38|0f3a)$/) {
	    if ($prefix_ok) {
		die "$fname:$line: invalid legacy map: $m\n";
	    } elsif (defined($opmap)) {
		die "$fname:$line: multiple legacy map specifiers\n";
	    } else {
		die "$fname:$line: legacy map must precede opcodes\n";
	    }
        } elsif ($op =~ /^[0-9a-f]{2}$/) {
            if (defined($litix) && $litix+$codes[$litix]+1 == scalar @codes &&
                $codes[$litix] < 4) {
                $codes[$litix]++;
                push(@codes, hex $op);
            } else {
                $litix = scalar(@codes);
                push(@codes, 01, hex $op);
            }
            $prefix_ok = 0;
        } elsif ($op eq '/r') {
            if (!defined($oppos{'r'}) || !defined($oppos{'m'})) {
                die "$fname:$line: $op requires r and m operands\n";
            }
            $opex = (($oppos{'m'} & 4) ? 06 : 0) |
                (($oppos{'r'} & 4) ? 05 : 0);
            push(@codes, $opex) if ($opex);
            # if mib is composed with two separate operands - ICC style
            push(@codes, 014 + ($oppos{'x'} & 3)) if (defined($oppos{'x'}));
            push(@codes, 0100 + (($oppos{'m'} & 3) << 3) + ($oppos{'r'} & 3));
            $prefix_ok = 0;
        } elsif ($op =~ m:^/([0-7])$:) {
            if (!defined($oppos{'m'})) {
                die "$fname:$line: $op requires an m operand\n";
            }
            push(@codes, 06) if ($oppos{'m'} & 4);
            push(@codes, 0200 + (($oppos{'m'} & 3) << 3) + $1);
            $prefix_ok = 0;
	} elsif ($op =~ m:^/([0-3]?)r([0-7])$:) {
	    if (!defined($oppos{'r'})) {
                die "$fname:$line: $op requires an r operand\n";
	    }
	    push(@codes, 05) if ($oppos{'r'} & 4);
	    push(@codes, 0171);
	    push(@codes, (($1+0) << 6) + (($oppos{'r'} & 3) << 3) + $2);
	    $prefix_ok = 0;
        } elsif ($op =~ /^(vex|xop)(|\..*)$/) {
            my $vexname = $1;
            my $c = $vexmap{$vexname};
            my ($m,$w,$l,$p) = (undef,undef,undef,0);
            my $has_nds = 0;
            my @subops = split(/\./, $2);
	    if (defined($opmap)) {
		warn "$fname:$line: legacy prefix ignored with VEX\n";
	    }
	    foreach $oq (@subops) {
		if ($oq eq '') {
		    next;
		} elsif ($oq eq '128' || $oq eq 'l0' || $oq eq 'lz') {
		    $l = 0;
		} elsif ($oq eq '256' || $oq eq 'l1') {
		    $l = 1;
		} elsif ($oq eq 'lig') {
		    $l = 0;
		    $flags->{'LIG'}++;
		} elsif ($oq eq 'w0') {
		    $w = 0;
		} elsif ($oq eq 'w1') {
		    $w = 1;
		} elsif ($oq eq 'wig') {
		    $w = 0;
		    $flags->{'WIG'}++;
		} elsif ($oq eq 'ww') {
		    $w = 0;
		    $flags->{'WW'}++;
		} elsif ($oq eq 'np' || $oq eq 'p0') {
		    $p = 0;
		} elsif ($oq eq '66' || $oq eq 'p1') {
		    $p = 1;
		} elsif ($oq eq 'f3' || $oq eq 'p2') {
		    $p = 2;
		} elsif ($oq eq 'f2' || $oq eq 'p3') {
		    $p = 3;
		} elsif ($oq eq '0f') {
		    $m = 1;
		} elsif ($oq eq '0f38') {
		    $m = 2;
		} elsif ($oq eq '0f3a') {
		    $m = 3;
		} elsif ($oq =~ /^(m|map)([0-9]+)$/) {
		    $m = $2+0;
		} elsif ($oq eq 'nds' || $oq eq 'ndd' || $oq eq 'dds') {
		    if (!defined($oppos{'v'})) {
			die "$fname:$line: $vexname.$oq without 'v' operand\n";
		    }
		    $has_nds = 1;
		} else {
		    die "$fname:$line: undefined modifier: $vexname.$oq\n";
		}
	    }
            if (!defined($m) || !defined($l) || !defined($p)) {
                die "$fname:$line: missing fields in \U$vexname\E specification\n";
            }

	    if (!defined($w)) {
		$w = 0;
		$flags->{'WIG'}++;
	    }

	    my $minmap = ($c == 1) ? 8 : 0; # 0-31 for VEX, 8-31 for XOP
	    if ($m < $minmap || $m > 31) {
		die "$fname:$line: Only maps ${minmap}-31 are valid for \U${vexname}\n";
	    }
	    push(@codes, 05) if ($oppos{'v'} > 3);
            push(@codes, defined($oppos{'v'}) ? 0260+$oppos{'v'} : 0270,
                 ($c << 6)+$m, ($w << 7)+($l << 2)+$p);

	    $flags->{'VEX'}++;
	    $flags->{'NOAPX'}++; # VEX doesn't support registers 16+
            $prefix_ok = 0;
        } elsif ($op =~ /^(evex)(|\..*)$/) {
            my $c = $vexmap{$1};
            my ($m,$w,$l,$p,$scc,$nf,$u,$ndd) = (undef,0,undef,0,undef,undef,undef,0,0);
            my ($nds,$nd,$dfv,$v) = (0, 0, 0, 0);
	    my @bad_op = ();
            my @subops = split(/\./, $2);
	    if (defined($opmap)) {
		warn "$fname:$line: legacy prefix ignored with EVEX\n";
	    }
	    foreach $oq (@subops) {
		if ($oq eq '') {
		    next;
		} elsif ($oq eq '128' || $oq eq 'l0' || $oq eq 'lz' || $oq eq 'lig') {
		    $l = 0;
		} elsif ($oq eq '256' || $oq eq 'l1') {
		    $l = 1;
		} elsif ($oq eq '512' || $oq eq 'l2') {
		    $l = 2;
		} elsif ($oq eq '1024' || $oq eq '1k' || $oq eq 'l3') {
		    # Not actually defined, but...
		    $l = 3;
		} elsif ($oq eq 'w0') {
		    $w = 0;
		} elsif ($oq eq 'w1') {
		    $w = 1;
		} elsif ($oq eq 'wig') {
		    $w = 0;
		    $flags->{'WIG'}++;
		} elsif ($oq eq 'ww') {
		    $w = 0;
		    $flags->{'WW'}++;
		} elsif ($oq eq 'np' || $oq eq 'p0') {
		    $p = 0;
		} elsif ($oq eq '66' || $oq eq 'p1') {
		    $p = 1;
		} elsif ($oq eq 'f3' || $oq eq 'p2') {
		    $p = 2;
		} elsif ($oq eq 'f2' || $oq eq 'p3') {
		    $p = 3;
		} elsif ($oq eq '0f') {
		    $m = 1;
		} elsif ($oq eq '0f38') {
		    $m = 2;
		} elsif ($oq eq '0f3a') {
		    $m = 3;
		} elsif ($oq =~ /^(m|map)([0-7])$/) {
		    $m = $2+0;
		} elsif ($oq =~ /^scc([0-9]+)$/) {
		    $scc = $1+0;
		    push(@bad_op, ['v', $oq]);
		} elsif ($oq eq 'u') {
		    $u = 1;
		} elsif ($oq =~ /^nf([01]?)$/) {
		    if ($1 eq '') {
			$flags->{'NF'}++;
		    }
		    $nf = "0$1" + 0;
		} elsif ($oq =~ /^v([0-9]+)$/) {
		    $v = $1 + 0;
		    push(@bad_op, ['v', $oq]);
		} elsif ($oq eq 'dfv') {
		    $flags->{'DFV'}++;
		    $dfv = 1;
		    push(@bad_op, ['v', $oq]);
		} elsif ($oq =~ /^nd([01])$/) {
		    $nd = $1 + 0;
		} elsif ($oq =~ /^(nds|ndd|nd|dds)$/) {
		    if (!defined($oppos{'v'})) {
			die "$fname:$line: evex.$oq without 'v' operand\n";
		    }
		    $nds = 1;
		    $nd  = $oq eq 'nd';
		} else {
		    die "$fname:$line: undefined modifier: evex.$oq\n";
		}
	    }
            if (!defined($m) || !defined($w) || !defined($l) || !defined($p)) {
                die "$fname:$line: missing fields in EVEX specification\n";
            }
	    if ($m > 7) {
		die "$fname:$line: Only maps 0-7 are valid for EVEX\n";
	    }
	    foreach my $bad (@bad_op) {
		my($what, $because) = @$inv;
		if (defined($oppos{$what})) {
		    die "$fname:$line: $what and evex.$because are mutually incompatible\n";
		}
	    }
	    if ($scc && $nf) {
		die "$fname:$line: evex.scc and evex.nf are mutually incompatible\n";
	    }

	    my @p = ($m | 0xf0, $p | 0x7c, ($l << 5) | 0x08);
	    $v ^= 0x0f if ($dfv);
	    $v ^= 0x10 if (defined($scc));
	    $p[1] ^= ($v & 15) << 3;
	    $p[1] ^= $w << 7;
	    $p[2] ^= ($v & 16) >> 1;
	    $p[2] ^= $scc & 15;
	    $p[2] |= 0x04 if ($nf);
	    $p[2] |= 0x10 if ($nd);

	    push(@codes, 05) if ($oppos{'v'} > 3);
	    push(@codes, defined($oppos{'v'}) ? 0240+$oppos{'v'} : 0250, @p);
	    push(@codes, $tup);

	    $flags->{'EVEX'}++;
            $prefix_ok = 0;
	} elsif ($op =~ /^(rex2)(\..*)?$/) {
	    my $name = $1;
            my @subops = split(/\./, $2);
	    my $c = 0350;
	    my $m = undef;
	    foreach $oq (@subops) {
		if ($oq eq '') {
		    next;
		} elsif ($oq =~ /^x[15]$/) {
		    $c |= 01;
		    if ($optional) {
			warn "$fname:$line: $name.$oq promoted to unconditional\n";
			$optional = 0;
		    }
		} else {
		    die "$fname:$line: unknown modifier: $name.$oq\n";
		}
	    }

	    push(@codes, $c);
	    $flags->{'APX'}++;
	    $flags->{'REX2'}++;
	    $flags->{'LONG'}++;
            $prefix_ok = 0;
        } elsif (defined $imm_codes{$op}) {
            if ($op eq 'seg') {
                if ($last_imm lt 'i') {
                    die "$fname:$line: seg without an immediate operand\n";
                }
            } else {
                $last_imm++;
                if ($last_imm gt 'j') {
                    die "$fname:$line: too many immediate operands\n";
                }
            }
            if (!defined($oppos{$last_imm})) {
                die "$fname:$line: $op without '$last_imm' operand\n";
            }
            push(@codes, 05) if ($oppos{$last_imm} & 4);
            push(@codes, $imm_codes{$op} + ($oppos{$last_imm} & 3));
            $prefix_ok = 0;
        } elsif ($op eq '/is4') {
            if (!defined($oppos{'s'})) {
                die "$fname:$line: $op without 's' operand\n";
            }
            if (defined($oppos{'i'})) {
                push(@codes, 0172, ($oppos{'s'} << 3)+$oppos{'i'});
            } else {
                push(@codes, 05) if ($oppos{'s'} & 4);
                push(@codes, 0174+($oppos{'s'} & 3));
            }
            $prefix_ok = 0;
        } elsif ($op =~ /^\/is4\=([0-9]+)$/) {
            my $imm = $1;
            if (!defined($oppos{'s'})) {
                die "$fname:$line: $op without 's' operand\n";
            }
            if ($imm < 0 || $imm > 15) {
                die "$fname:$line: invalid imm4 value for $op: $imm\n";
            }
            push(@codes, 0173, ($oppos{'s'} << 4) + $imm);
            $prefix_ok = 0;
        } elsif ($op =~ /^([0-9a-f]{2})\+r$/) {
            if (!defined($oppos{'r'})) {
                die "$fname:$line: $op without 'r' operand\n";
            }
            push(@codes, 05) if ($oppos{'r'} & 4);
            push(@codes, 010 + ($oppos{'r'} & 3), hex $1);
            $prefix_ok = 0;
        } elsif ($op =~ /^\\([0-7]+|x[0-9a-f]{2})$/) {
            # Escape to enter literal bytecodes
            push(@codes, oct $1);
        } else {
            die "$fname:$line: unknown operation: $op\n";
        }
    }

    # Legacy maps 2+ do not support REX2 encodings
    if ($opmap > 1 && !$flags{'EVEX'}) {
	$flags->{'NOAPX'}++;
    }

    return @codes;
}
