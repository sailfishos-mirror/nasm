default rel
	cfcmovp bp, ax
	cfcmovp word [0x810], bp
	cfcmovp edi, edx
	cfcmovp ebx, ecx
	cfcmovp rsi, rdx
	cfcmovp qword [0x49e], rdi
	cfcmovp di, bp
	cfcmovp bx, di
