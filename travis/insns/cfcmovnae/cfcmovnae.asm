default rel
	cfcmovnae word [0x738], si
	cfcmovnae word [0x909], bx
	cfcmovnae esi, ecx
	cfcmovnae esi, esi
	cfcmovnae rax, rbp
	cfcmovnae rcx, rdi
	cfcmovnae cx, word [0xa17]
	cfcmovnae dx, word [0x9ae]
	cfcmovnae r10w, r15w
	cfcmovnae r14d, r10d
	cfcmovnae r8, r12
	cfcmovnae r14w, r10w
	cfcmovnae r22w, r24w
	cfcmovnae r24d, r29d
	cfcmovnae r19, r17
	cfcmovnae r26w, r29w
	cfcmovnae word [eax+1], dx
	cfcmovnae word [eax+64], cx
	cfcmovnae dword [eax+1], esi
	cfcmovnae dword [eax+64], esi
	cfcmovnae qword [eax+1], rbx
	cfcmovnae qword [eax+64], rdx
	cfcmovnae di, word [eax+1]
	cfcmovnae di, word [eax+64]
	cfcmovnae edi, dword [eax+1]
	cfcmovnae edi, dword [eax+64]
	cfcmovnae rdi, qword [eax+1]
	cfcmovnae rax, qword [eax+64]
	cfcmovnae bx, si, word [eax+1]
	cfcmovnae si, si, word [eax+64]
	cfcmovnae ecx, ebp, dword [eax+1]
	cfcmovnae edi, ebx, dword [eax+64]
	cfcmovnae rbp, rbx, qword [eax+1]
	cfcmovnae rbp, rdx, qword [eax+64]
