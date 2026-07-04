default rel
	cfcmovpe bx, cx
	cfcmovpe bp, ax
	cfcmovpe ecx, ebp
	cfcmovpe eax, ebp
	cfcmovpe rdx, rbx
	cfcmovpe rdx, rdi
	cfcmovpe bp, word [0xd05]
	cfcmovpe cx, ax
	cfcmovpe r11w, r12w
	cfcmovpe r10d, r15d
	cfcmovpe r11, r12
	cfcmovpe r14w, r8w
	cfcmovpe r23w, r20w
	cfcmovpe r20d, r29d
	cfcmovpe r26, r20
	cfcmovpe r29w, r18w
	cfcmovpe word [eax+1], bp
	cfcmovpe word [eax+64], ax
	cfcmovpe dword [eax+1], esi
	cfcmovpe dword [eax+64], eax
	cfcmovpe qword [eax+1], rdx
	cfcmovpe qword [eax+64], rbx
	cfcmovpe si, word [eax+1]
	cfcmovpe cx, word [eax+64]
	cfcmovpe ebp, dword [eax+1]
	cfcmovpe esi, dword [eax+64]
	cfcmovpe rcx, qword [eax+1]
	cfcmovpe rax, qword [eax+64]
	cfcmovpe bx, bx, word [eax+1]
	cfcmovpe di, bx, word [eax+64]
	cfcmovpe ebx, ebp, dword [eax+1]
	cfcmovpe esi, ebx, dword [eax+64]
	cfcmovpe rsi, rdi, qword [eax+1]
	cfcmovpe rbx, rsi, qword [eax+64]
