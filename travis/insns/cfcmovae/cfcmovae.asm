default rel
	cfcmovae word [0x293], si
	cfcmovae word [0x632], ax
	cfcmovae esi, edi
	cfcmovae edi, esi
	cfcmovae qword [0xa4c], rcx
	cfcmovae rbx, rax
	cfcmovae bp, bx
	cfcmovae di, word [0xc06]
