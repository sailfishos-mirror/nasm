default rel
	ror byte [0x4d6], 1
	ror cl, 1
	ror dx, 1
	ror word [0x9ce], 1
	ror dword [0xac7], 1
	ror ebp, 1
	ror qword [0xd84], 1
	ror rbp, 1
	ror r12b, 1
	ror r11w, 1
	ror r13d, 1
	ror r14, 1
	ror r27b, 1
	ror r17w, 1
	ror r25d, 1
	ror r30, 1
	ror byte [eax+1], 1
	ror byte [eax+64], 1
	ror word [eax+1], 1
	ror word [eax+64], 1
	ror dword [eax+1], 1
	ror dword [eax+64], 1
	ror qword [eax+1], 1
	ror qword [eax+64], 1
	ror byte [eax+1], cl
	ror byte [eax+64], cl
	ror word [eax+1], cl
	ror word [eax+64], cl
	ror dword [eax+1], cl
	ror dword [eax+64], cl
	ror qword [eax+1], cl
	ror qword [eax+64], cl
	ror byte [eax+1], cx
	ror byte [eax+64], cx
	ror word [eax+1], cx
	ror word [eax+64], cx
	ror dword [eax+1], cx
	ror dword [eax+64], cx
	ror qword [eax+1], cx
	ror qword [eax+64], cx
	ror byte [eax+1], ecx
	ror byte [eax+64], ecx
	ror word [eax+1], ecx
	ror word [eax+64], ecx
	ror dword [eax+1], ecx
	ror dword [eax+64], ecx
	ror qword [eax+1], ecx
	ror qword [eax+64], ecx
	ror byte [eax+1], 0xef
	ror byte [eax+64], 0x1
	ror word [eax+1], 0x5d
	ror word [eax+64], 0xad
	ror dword [eax+1], 0x2d
	ror dword [eax+64], 0x3b
	ror qword [eax+1], 0x65
	ror qword [eax+64], 0x63
	ror ecx, dword [eax+1], 0x41
	ror eax, dword [eax+64], 0x8a
	ror rdx, qword [eax+1], 0xbd
	ror rbx, qword [eax+64], 0x49
	ror bl, byte [eax+1], 1
	ror bl, byte [eax+64], 1
	ror bp, word [eax+1], 1
	ror cx, word [eax+64], 1
	ror ecx, dword [eax+1], 1
	ror edx, dword [eax+64], 1
	ror rax, qword [eax+1], 1
	ror rbx, qword [eax+64], 1
	ror cl, byte [eax+1], cl
	ror dl, byte [eax+64], cl
	ror bx, word [eax+1], cl
	ror bx, word [eax+64], cl
	ror esi, dword [eax+1], cl
	ror esi, dword [eax+64], cl
	ror rsi, qword [eax+1], cl
	ror rdi, qword [eax+64], cl
	ror cl, byte [eax+1], cx
	ror al, byte [eax+64], cx
	ror ax, word [eax+1], cx
	ror cx, word [eax+64], cx
	ror ebp, dword [eax+1], cx
	ror ebp, dword [eax+64], cx
	ror rdi, qword [eax+1], cx
	ror rdi, qword [eax+64], cx
	ror dl, byte [eax+1], ecx
	ror dl, byte [eax+64], ecx
	ror ax, word [eax+1], ecx
	ror di, word [eax+64], ecx
	ror ecx, dword [eax+1], ecx
	ror esi, dword [eax+64], ecx
	ror rbx, qword [eax+1], ecx
	ror rdx, qword [eax+64], ecx
	ror cl, byte [eax+1], 0x14
	ror cl, byte [eax+64], 0x41
	ror cx, word [eax+1], 0x78
	ror cx, word [eax+64], 0x7
	ror edi, dword [eax+1], 0xa2
	ror esi, dword [eax+64], 0x6c
	ror rbp, qword [eax+1], 0x76
	ror rsi, qword [eax+64], 0x5f
