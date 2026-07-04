default rel
	rcr byte [0x905], 1
	rcr byte [0xcbc], 1
	rcr di, 1
	rcr bp, 1
	rcr dword [0xbb8], 1
	rcr eax, 1
	rcr rbp, 1
	rcr rax, 1
	rcr r12b, 1
	rcr r15w, 1
	rcr r10d, 1
	rcr r13, 1
	rcr r18b, 1
	rcr r28w, 1
	rcr r16d, 1
	rcr r30, 1
	rcr byte [eax+1], 1
	rcr byte [eax+64], 1
	rcr word [eax+1], 1
	rcr word [eax+64], 1
	rcr dword [eax+1], 1
	rcr dword [eax+64], 1
	rcr qword [eax+1], 1
	rcr qword [eax+64], 1
	rcr byte [eax+1], cl
	rcr byte [eax+64], cl
	rcr word [eax+1], cl
	rcr word [eax+64], cl
	rcr dword [eax+1], cl
	rcr dword [eax+64], cl
	rcr qword [eax+1], cl
	rcr qword [eax+64], cl
	rcr byte [eax+1], cx
	rcr byte [eax+64], cx
	rcr word [eax+1], cx
	rcr word [eax+64], cx
	rcr dword [eax+1], cx
	rcr dword [eax+64], cx
	rcr qword [eax+1], cx
	rcr qword [eax+64], cx
	rcr byte [eax+1], ecx
	rcr byte [eax+64], ecx
	rcr word [eax+1], ecx
	rcr word [eax+64], ecx
	rcr dword [eax+1], ecx
	rcr dword [eax+64], ecx
	rcr qword [eax+1], ecx
	rcr qword [eax+64], ecx
	rcr byte [eax+1], 0x9
	rcr byte [eax+64], 0x8c
	rcr word [eax+1], 0xbd
	rcr word [eax+64], 0xb2
	rcr dword [eax+1], 0x5d
	rcr dword [eax+64], 0xb5
	rcr qword [eax+1], 0x57
	rcr qword [eax+64], 0x8e
	rcr al, byte [eax+1], 1
	rcr dl, byte [eax+64], 1
	rcr si, word [eax+1], 1
	rcr bx, word [eax+64], 1
	rcr edx, dword [eax+1], 1
	rcr edx, dword [eax+64], 1
	rcr rsi, qword [eax+1], 1
	rcr rsi, qword [eax+64], 1
	rcr al, byte [eax+1], cl
	rcr cl, byte [eax+64], cl
	rcr dx, word [eax+1], cl
	rcr dx, word [eax+64], cl
	rcr edi, dword [eax+1], cl
	rcr edx, dword [eax+64], cl
	rcr rbp, qword [eax+1], cl
	rcr rdi, qword [eax+64], cl
	rcr bl, byte [eax+1], cx
	rcr al, byte [eax+64], cx
	rcr ax, word [eax+1], cx
	rcr bp, word [eax+64], cx
	rcr ebp, dword [eax+1], cx
	rcr edx, dword [eax+64], cx
	rcr rdx, qword [eax+1], cx
	rcr rax, qword [eax+64], cx
	rcr al, byte [eax+1], ecx
	rcr dl, byte [eax+64], ecx
	rcr bp, word [eax+1], ecx
	rcr bp, word [eax+64], ecx
	rcr eax, dword [eax+1], ecx
	rcr ebx, dword [eax+64], ecx
	rcr rbx, qword [eax+1], ecx
	rcr rdi, qword [eax+64], ecx
	rcr bl, byte [eax+1], 0x40
	rcr cl, byte [eax+64], 0xc6
	rcr dx, word [eax+1], 0x35
	rcr cx, word [eax+64], 0x8c
	rcr ebx, dword [eax+1], 0x93
	rcr edi, dword [eax+64], 0xaa
	rcr rdx, qword [eax+1], 0x69
	rcr rsi, qword [eax+64], 0xb7
