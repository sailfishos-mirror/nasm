default rel
	ccmpnb 2, byte [0x683], cl
	ccmpnb 2, cl, cl
	ccmpnb 7, word [0x8c2], cx
	ccmpnb 2, dx, bp
	ccmpnb 8, ecx, ebp
	ccmpnb 5, dword [0xf3c], ebx
	ccmpnb 3, rdi, rax
	ccmpnb 15, rbx, rbx
	ccmpnb 2, r9b, r11b
	ccmpnb 8, r10w, r8w
	ccmpnb 9, r10d, r12d
	ccmpnb 11, r13, r9
	ccmpnb 11, r20b, r23b
	ccmpnb 10, r20w, r29w
	ccmpnb 8, r28d, r21d
	ccmpnb 7, r18, r21
	ccmpnb 14, byte [eax+1], al
	ccmpnb 14, byte [eax+64], dl
	ccmpnb 1, word [eax+1], di
	ccmpnb 8, word [eax+64], cx
	ccmpnb 9, dword [eax+1], ebp
	ccmpnb 6, dword [eax+64], eax
	ccmpnb 13, qword [eax+1], rax
	ccmpnb 12, qword [eax+64], rsi
	ccmpnb 4, dl, byte [eax+1]
	ccmpnb 9, bl, byte [eax+64]
	ccmpnb 13, si, word [eax+1]
	ccmpnb 3, cx, word [eax+64]
	ccmpnb 15, eax, dword [eax+1]
	ccmpnb 8, eax, dword [eax+64]
	ccmpnb 0, rcx, qword [eax+1]
	ccmpnb 1, rcx, qword [eax+64]
	ccmpnb 11, word [eax+1], -57
	ccmpnb 9, word [eax+64], -14
	ccmpnb 10, dword [eax+1], 76
	ccmpnb 10, dword [eax+64], 102
	ccmpnb 3, qword [eax+1], 53
	ccmpnb 11, qword [eax+64], -79
	ccmpnb 9, byte [eax+1], 0x66
	ccmpnb 5, byte [eax+64], 0x5
	ccmpnb 14, word [eax+1], 0xca7d
	ccmpnb 13, word [eax+64], 0xaa55
	ccmpnb 14, dword [eax+1], 0x1d3ac74
	ccmpnb 15, dword [eax+64], 0x142cf049
	ccmpnb 3, qword [eax+1], -314858551
	ccmpnb 4, qword [eax+64], 244465706
