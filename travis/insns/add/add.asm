default rel
	add bl, bl
	add dl, bl
	add dx, si
	add di, di
	add dword [0xa9d], ecx
	add esi, ebp
	add rax, rcx
	add rbp, rdi
	add r14b, r13b
	add r14w, r12w
	add r12d, r15d
	add r12, r15
	add r20b, r24b
	add r19w, r16w
	add r22d, r27d
	add r25, r21
	add byte [eax+1], al
	add byte [eax+64], cl
	add word [eax+1], si
	add word [eax+64], cx
	add dword [eax+1], eax
	add dword [eax+64], ebp
	add qword [eax+1], rbp
	add qword [eax+64], rbx
	add al, byte [eax+1]
	add cl, byte [eax+64]
	add bp, word [eax+1]
	add di, word [eax+64]
	add eax, dword [eax+1]
	add ebx, dword [eax+64]
	add rcx, qword [eax+1]
	add rcx, qword [eax+64]
	add byte [eax+1], 0x49
	add byte [eax+64], 0xc
	add word [eax+1], -98
	add word [eax+64], -32
	add word [eax+1], 0xbb73
	add word [eax+64], 0x915e
	add dword [eax+1], 93
	add dword [eax+64], -6
	add dword [eax+1], 0x3c660717
	add dword [eax+64], 0x2c1cebc4
	add qword [eax+1], -7
	add qword [eax+64], -32
	add qword [eax+1], -196667217
	add qword [eax+64], -49947754
	add cl, al, byte [eax+1]
	add cl, cl, byte [eax+64]
	add bp, dx, word [eax+1]
	add bx, cx, word [eax+64]
	add edx, esi, dword [eax+1]
	add ebp, ebx, dword [eax+64]
	add rsi, rdi, qword [eax+1]
	add rsi, rcx, qword [eax+64]
	add al, byte [eax+1], dl
	add al, byte [eax+64], al
	add ax, word [eax+1], dx
	add bx, word [eax+64], bp
	add edi, dword [eax+1], edx
	add ebx, dword [eax+64], edx
	add rdi, qword [eax+1], rsi
	add rax, qword [eax+64], rax
	add dx, word [eax+1], 125
	add bp, word [eax+64], -48
	add esi, dword [eax+1], -86
	add esi, dword [eax+64], 11
	add rbp, qword [eax+1], 68
	add rcx, qword [eax+64], 53
	add cl, byte [eax+1], 0x43
	add al, byte [eax+64], 0xfa
	add di, word [eax+1], 0xe409
	add bp, word [eax+64], 0xd42b
	add ebx, dword [eax+1], 0x21a6312a
	add ecx, dword [eax+64], 0x3d964c26
	add rdi, qword [eax+1], 455876284
	add rsi, qword [eax+64], -93805067
