default rel
	cfcmovng word [0xd33], bp
	cfcmovng cx, bp
	cfcmovng edx, eax
	cfcmovng edx, ebp
	cfcmovng rcx, rcx
	cfcmovng qword [0xa62], rdx
	cfcmovng di, bp
	cfcmovng si, bp
	cfcmovng r10w, r12w
	cfcmovng r13d, r8d
	cfcmovng r10, r12
	cfcmovng r9w, r12w
	cfcmovng r23w, r27w
	cfcmovng r25d, r17d
	cfcmovng r28, r23
	cfcmovng r18w, r30w
	cfcmovng word [eax+1], dx
	cfcmovng word [eax+64], cx
	cfcmovng dword [eax+1], edi
	cfcmovng dword [eax+64], esi
	cfcmovng qword [eax+1], rdx
	cfcmovng qword [eax+64], rdx
	cfcmovng cx, word [eax+1]
	cfcmovng bp, word [eax+64]
	cfcmovng ecx, dword [eax+1]
	cfcmovng ebx, dword [eax+64]
	cfcmovng rcx, qword [eax+1]
	cfcmovng rdx, qword [eax+64]
	cfcmovng bp, ax, word [eax+1]
	cfcmovng ax, cx, word [eax+64]
	cfcmovng edi, ebp, dword [eax+1]
	cfcmovng ebx, ebp, dword [eax+64]
	cfcmovng rsi, rdi, qword [eax+1]
	cfcmovng rdx, rbp, qword [eax+64]
