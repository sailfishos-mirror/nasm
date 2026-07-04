default rel
	cfcmovl word [0xe41], bp
	cfcmovl ax, dx
	cfcmovl eax, edi
	cfcmovl eax, ecx
	cfcmovl rax, rbp
	cfcmovl rax, rdx
	cfcmovl dx, bx
	cfcmovl si, si
	cfcmovl r15w, r14w
	cfcmovl r15d, r10d
	cfcmovl r10, r9
	cfcmovl r9w, r14w
	cfcmovl r22w, r19w
	cfcmovl r19d, r27d
	cfcmovl r26, r24
	cfcmovl r22w, r20w
	cfcmovl word [eax+1], bp
	cfcmovl word [eax+64], cx
	cfcmovl dword [eax+1], ecx
	cfcmovl dword [eax+64], eax
	cfcmovl qword [eax+1], rdx
	cfcmovl qword [eax+64], rdi
	cfcmovl bx, word [eax+1]
	cfcmovl bx, word [eax+64]
	cfcmovl eax, dword [eax+1]
	cfcmovl ebp, dword [eax+64]
	cfcmovl rax, qword [eax+1]
	cfcmovl rcx, qword [eax+64]
	cfcmovl ax, bx, word [eax+1]
	cfcmovl si, si, word [eax+64]
	cfcmovl ecx, esi, dword [eax+1]
	cfcmovl ebp, eax, dword [eax+64]
	cfcmovl rdx, rsi, qword [eax+1]
	cfcmovl rax, rdx, qword [eax+64]
