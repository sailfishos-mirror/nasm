default rel
	rol byte [0x39d], 1
	rol byte [0x91c], 1
	rol word [0xf53], 1
	rol ax, 1
	rol dword [0x537], 1
	rol edi, 1
	rol rsi, 1
	rol rdi, 1
	rol r8b, 1
	rol r13w, 1
	rol r12d, 1
	rol r12, 1
	rol r26b, 1
	rol r23w, 1
	rol r30d, 1
	rol r20, 1
	rol byte [eax+1], 1
	rol byte [eax+64], 1
	rol word [eax+1], 1
	rol word [eax+64], 1
	rol dword [eax+1], 1
	rol dword [eax+64], 1
	rol qword [eax+1], 1
	rol qword [eax+64], 1
	rol byte [eax+1], cl
	rol byte [eax+64], cl
	rol word [eax+1], cl
	rol word [eax+64], cl
	rol dword [eax+1], cl
	rol dword [eax+64], cl
	rol qword [eax+1], cl
	rol qword [eax+64], cl
	rol byte [eax+1], cx
	rol byte [eax+64], cx
	rol word [eax+1], cx
	rol word [eax+64], cx
	rol dword [eax+1], cx
	rol dword [eax+64], cx
	rol qword [eax+1], cx
	rol qword [eax+64], cx
	rol byte [eax+1], ecx
	rol byte [eax+64], ecx
	rol word [eax+1], ecx
	rol word [eax+64], ecx
	rol dword [eax+1], ecx
	rol dword [eax+64], ecx
	rol qword [eax+1], ecx
	rol qword [eax+64], ecx
	rol byte [eax+1], 0x94
	rol byte [eax+64], 0xbf
	rol word [eax+1], 0x3a
	rol word [eax+64], 0x1f
	rol dword [eax+1], 0xc
	rol dword [eax+64], 0x8e
	rol qword [eax+1], 0xc
	rol qword [eax+64], 0x7c
	rol eax, dword [eax+1], 1
	rol edi, dword [eax+64], 1
	rol rdi, qword [eax+1], 1
	rol rbp, qword [eax+64], 1
	rol al, byte [eax+1], 1
	rol al, byte [eax+64], 1
	rol ax, word [eax+1], 1
	rol dx, word [eax+64], 1
	rol ebp, dword [eax+1], 1
	rol ecx, dword [eax+64], 1
	rol rdx, qword [eax+1], 1
	rol rbx, qword [eax+64], 1
	rol cl, byte [eax+1], cl
	rol cl, byte [eax+64], cl
	rol si, word [eax+1], cl
	rol si, word [eax+64], cl
	rol ecx, dword [eax+1], cl
	rol edx, dword [eax+64], cl
	rol rdx, qword [eax+1], cl
	rol rbx, qword [eax+64], cl
	rol cl, byte [eax+1], cx
	rol al, byte [eax+64], cx
	rol bx, word [eax+1], cx
	rol ax, word [eax+64], cx
	rol ecx, dword [eax+1], cx
	rol ebx, dword [eax+64], cx
	rol rbx, qword [eax+1], cx
	rol rdx, qword [eax+64], cx
	rol cl, byte [eax+1], ecx
	rol al, byte [eax+64], ecx
	rol dx, word [eax+1], ecx
	rol dx, word [eax+64], ecx
	rol eax, dword [eax+1], ecx
	rol edi, dword [eax+64], ecx
	rol rax, qword [eax+1], ecx
	rol rax, qword [eax+64], ecx
	rol bl, byte [eax+1], 0xba
	rol dl, byte [eax+64], 0x9e
	rol di, word [eax+1], 0x82
	rol ax, word [eax+64], 0xf6
	rol ecx, dword [eax+1], 0x51
	rol ebp, dword [eax+64], 0xf2
	rol rdx, qword [eax+1], 0xc
	rol rbp, qword [eax+64], 0x87
