default rel
	cfcmovnb bx, ax
	cfcmovnb cx, dx
	cfcmovnb eax, eax
	cfcmovnb edx, ebp
	cfcmovnb rcx, rax
	cfcmovnb rdx, rcx
	cfcmovnb dx, word [0x28b]
	cfcmovnb cx, di
	cfcmovnb r13w, r9w
	cfcmovnb r12d, r9d
	cfcmovnb r13, r14
	cfcmovnb r12w, r9w
	cfcmovnb r31w, r16w
	cfcmovnb r16d, r22d
	cfcmovnb r31, r22
	cfcmovnb r24w, r20w
	cfcmovnb word [eax+1], ax
	cfcmovnb word [eax+64], di
	cfcmovnb dword [eax+1], ebp
	cfcmovnb dword [eax+64], eax
	cfcmovnb qword [eax+1], rcx
	cfcmovnb qword [eax+64], rsi
	cfcmovnb bp, word [eax+1]
	cfcmovnb bx, word [eax+64]
	cfcmovnb ebx, dword [eax+1]
	cfcmovnb edi, dword [eax+64]
	cfcmovnb rbx, qword [eax+1]
	cfcmovnb rbx, qword [eax+64]
	cfcmovnb dx, bx, word [eax+1]
	cfcmovnb dx, bp, word [eax+64]
	cfcmovnb ebx, edx, dword [eax+1]
	cfcmovnb edi, ecx, dword [eax+64]
	cfcmovnb rcx, rcx, qword [eax+1]
	cfcmovnb rax, rdx, qword [eax+64]
