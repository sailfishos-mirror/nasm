default rel
	ccmpnz 9, byte [0x4f5], dl
	ccmpnz 1, dl, bl
	ccmpnz 14, si, bx
	ccmpnz 3, di, bx
	ccmpnz 14, esi, eax
	ccmpnz 3, dword [0xf77], esi
	ccmpnz 6, qword [0xbce], rdi
	ccmpnz 13, qword [0x80f], rdi
	ccmpnz 4, r14b, r15b
	ccmpnz 10, r14w, r10w
	ccmpnz 6, r13d, r8d
	ccmpnz 8, r10, r8
	ccmpnz 9, r27b, r23b
	ccmpnz 0, r29w, r19w
	ccmpnz 6, r27d, r26d
	ccmpnz 15, r24, r28
	ccmpnz 5, byte [eax+1], al
	ccmpnz 13, byte [eax+64], dl
	ccmpnz 15, word [eax+1], dx
	ccmpnz 3, word [eax+64], ax
	ccmpnz 2, dword [eax+1], ecx
	ccmpnz 0, dword [eax+64], esi
	ccmpnz 3, qword [eax+1], rdi
	ccmpnz 3, qword [eax+64], rsi
	ccmpnz 0, cl, byte [eax+1]
	ccmpnz 13, bl, byte [eax+64]
	ccmpnz 12, bp, word [eax+1]
	ccmpnz 7, bx, word [eax+64]
	ccmpnz 5, eax, dword [eax+1]
	ccmpnz 5, ebx, dword [eax+64]
	ccmpnz 13, rax, qword [eax+1]
	ccmpnz 11, rbp, qword [eax+64]
	ccmpnz 10, word [eax+1], -15
	ccmpnz 14, word [eax+64], 104
	ccmpnz 7, dword [eax+1], -99
	ccmpnz 11, dword [eax+64], 50
	ccmpnz 4, qword [eax+1], -10
	ccmpnz 8, qword [eax+64], 36
	ccmpnz 14, byte [eax+1], 0x4d
	ccmpnz 2, byte [eax+64], 0x3a
	ccmpnz 2, word [eax+1], 0x5e5e
	ccmpnz 15, word [eax+64], 0xa75
	ccmpnz 11, dword [eax+1], 0x14271578
	ccmpnz 9, dword [eax+64], 0x3617413d
	ccmpnz 6, qword [eax+1], -252757675
	ccmpnz 3, qword [eax+64], -262447455
