default rel
	ccmpe 7, al, bl
	ccmpe 10, al, al
	ccmpe 5, di, si
	ccmpe 5, bx, bp
	ccmpe 3, dword [0x8ec], edx
	ccmpe 5, edi, esi
	ccmpe 7, rax, rbp
	ccmpe 2, rdi, rdi
	ccmpe 13, r13b, r13b
	ccmpe 0, r11w, r9w
	ccmpe 14, r14d, r12d
	ccmpe 13, r15, r14
	ccmpe 1, r18b, r18b
	ccmpe 3, r28w, r29w
	ccmpe 9, r20d, r21d
	ccmpe 7, r30, r18
	ccmpe 5, byte [eax+1], dl
	ccmpe 2, byte [eax+64], dl
	ccmpe 1, word [eax+1], di
	ccmpe 3, word [eax+64], bx
	ccmpe 12, dword [eax+1], ebp
	ccmpe 4, dword [eax+64], ebp
	ccmpe 5, qword [eax+1], rsi
	ccmpe 12, qword [eax+64], rdi
	ccmpe 5, al, byte [eax+1]
	ccmpe 10, al, byte [eax+64]
	ccmpe 2, bx, word [eax+1]
	ccmpe 14, bx, word [eax+64]
	ccmpe 11, esi, dword [eax+1]
	ccmpe 3, ecx, dword [eax+64]
	ccmpe 12, rdx, qword [eax+1]
	ccmpe 1, rax, qword [eax+64]
	ccmpe 1, word [eax+1], -39
	ccmpe 15, word [eax+64], 82
	ccmpe 14, dword [eax+1], -74
	ccmpe 11, dword [eax+64], 34
	ccmpe 12, qword [eax+1], 4
	ccmpe 13, qword [eax+64], 95
	ccmpe 10, byte [eax+1], 0x55
	ccmpe 5, byte [eax+64], 0xae
	ccmpe 11, word [eax+1], 0x2621
	ccmpe 1, word [eax+64], 0xc620
	ccmpe 2, dword [eax+1], 0x32baaf78
	ccmpe 3, dword [eax+64], 0x103de3c6
	ccmpe 9, qword [eax+1], 57510227
	ccmpe 6, qword [eax+64], -492244701
