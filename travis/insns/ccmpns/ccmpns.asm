default rel
	ccmpns 11, byte [0x13f], al
	ccmpns 5, al, al
	ccmpns 2, di, cx
	ccmpns 6, word [0xa3e], si
	ccmpns 1, dword [0xabb], ebp
	ccmpns 0, ecx, edi
	ccmpns 5, rcx, rcx
	ccmpns 0, rbp, rdx
	ccmpns 0, r13b, r12b
	ccmpns 3, r11w, r9w
	ccmpns 6, r13d, r11d
	ccmpns 0, r11, r8
	ccmpns 3, r29b, r29b
	ccmpns 1, r20w, r24w
	ccmpns 0, r21d, r26d
	ccmpns 5, r29, r28
	ccmpns 13, byte [eax+1], bl
	ccmpns 5, byte [eax+64], al
	ccmpns 5, word [eax+1], di
	ccmpns 4, word [eax+64], bx
	ccmpns 12, dword [eax+1], ebx
	ccmpns 13, dword [eax+64], edi
	ccmpns 9, qword [eax+1], rbx
	ccmpns 1, qword [eax+64], rsi
	ccmpns 9, cl, byte [eax+1]
	ccmpns 5, bl, byte [eax+64]
	ccmpns 5, si, word [eax+1]
	ccmpns 10, cx, word [eax+64]
	ccmpns 13, edi, dword [eax+1]
	ccmpns 9, ecx, dword [eax+64]
	ccmpns 8, rdx, qword [eax+1]
	ccmpns 15, rdi, qword [eax+64]
	ccmpns 2, word [eax+1], 37
	ccmpns 2, word [eax+64], 101
	ccmpns 13, dword [eax+1], -4
	ccmpns 3, dword [eax+64], 11
	ccmpns 7, qword [eax+1], 124
	ccmpns 11, qword [eax+64], 58
	ccmpns 5, byte [eax+1], 0xa4
	ccmpns 5, byte [eax+64], 0xc2
	ccmpns 0, word [eax+1], 0xd829
	ccmpns 10, word [eax+64], 0xd02f
	ccmpns 3, dword [eax+1], 0x21d11a7a
	ccmpns 4, dword [eax+64], 0x2b155bbe
	ccmpns 3, qword [eax+1], -52534558
	ccmpns 0, qword [eax+64], -503518367
