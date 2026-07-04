default rel
	cfcmovns word [0xb0a], di
	cfcmovns ax, bp
	cfcmovns ebx, ecx
	cfcmovns edi, edx
	cfcmovns rcx, rdi
	cfcmovns qword [0xcdf], rbp
	cfcmovns cx, word [0x62d]
	cfcmovns cx, bp
	cfcmovns r15w, r10w
	cfcmovns r11d, r14d
	cfcmovns r15, r13
	cfcmovns r13w, r12w
	cfcmovns r25w, r17w
	cfcmovns r19d, r22d
	cfcmovns r27, r21
	cfcmovns r19w, r24w
	cfcmovns word [eax+1], di
	cfcmovns word [eax+64], cx
	cfcmovns dword [eax+1], ebp
	cfcmovns dword [eax+64], eax
	cfcmovns qword [eax+1], rdx
	cfcmovns qword [eax+64], rcx
	cfcmovns si, word [eax+1]
	cfcmovns dx, word [eax+64]
	cfcmovns edi, dword [eax+1]
	cfcmovns ecx, dword [eax+64]
	cfcmovns rax, qword [eax+1]
	cfcmovns rsi, qword [eax+64]
	cfcmovns di, si, word [eax+1]
	cfcmovns ax, dx, word [eax+64]
	cfcmovns edi, ebp, dword [eax+1]
	cfcmovns esi, ebp, dword [eax+64]
	cfcmovns rdi, rbp, qword [eax+1]
	cfcmovns rdi, rcx, qword [eax+64]
