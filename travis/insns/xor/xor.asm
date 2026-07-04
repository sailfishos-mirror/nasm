default rel
	xor bl, dl
	xor byte [0x189], dl
	xor ax, dx
	xor bx, ax
	xor dword [0x854], edi
	xor ebp, ecx
	xor rdi, rdx
	xor rbp, rdx
	xor r11b, r11b
	xor r8w, r14w
	xor r13d, r12d
	xor r14, r12
	xor r22b, r16b
	xor r27w, r18w
	xor r16d, r31d
	xor r18, r20
	xor byte [eax+1], al
	xor byte [eax+64], cl
	xor word [eax+1], ax
	xor word [eax+64], dx
	xor dword [eax+1], edi
	xor dword [eax+64], edx
	xor qword [eax+1], rdi
	xor qword [eax+64], rax
	xor al, byte [eax+1]
	xor al, byte [eax+64]
	xor dx, word [eax+1]
	xor si, word [eax+64]
	xor eax, dword [eax+1]
	xor ebx, dword [eax+64]
	xor rbp, qword [eax+1]
	xor rbp, qword [eax+64]
	xor byte [eax+1], 0x63
	xor byte [eax+64], 0xd4
	xor word [eax+1], 0
	xor word [eax+64], -52
	xor word [eax+1], 0x725c
	xor word [eax+64], 0xa0a9
	xor dword [eax+1], -57
	xor dword [eax+64], 38
	xor dword [eax+1], 0x2d8c8700
	xor dword [eax+64], 0x10fdbf6f
	xor qword [eax+1], -106
	xor qword [eax+64], -18
	xor qword [eax+1], -461772592
	xor qword [eax+64], -177753161
	xor al, bl, byte [eax+1]
	xor al, al, byte [eax+64]
	xor ax, ax, word [eax+1]
	xor bp, si, word [eax+64]
	xor edx, ebp, dword [eax+1]
	xor eax, ecx, dword [eax+64]
	xor rdx, rax, qword [eax+1]
	xor rdi, rcx, qword [eax+64]
	xor al, byte [eax+1], al
	xor cl, byte [eax+64], cl
	xor bp, word [eax+1], ax
	xor bx, word [eax+64], bx
	xor edi, dword [eax+1], edi
	xor ebp, dword [eax+64], edi
	xor rdi, qword [eax+1], rcx
	xor rbx, qword [eax+64], rax
	xor cx, word [eax+1], -24
	xor bx, word [eax+64], 113
	xor ebx, dword [eax+1], -113
	xor edi, dword [eax+64], -90
	xor rdx, qword [eax+1], -114
	xor rbp, qword [eax+64], -114
	xor al, byte [eax+1], 0xd9
	xor al, byte [eax+64], 0xd
	xor bx, word [eax+1], 0xd035
	xor bp, word [eax+64], 0x9a80
	xor ebp, dword [eax+1], 0x30839c82
	xor edx, dword [eax+64], 0x33267298
	xor rcx, qword [eax+1], -167674078
	xor rax, qword [eax+64], 206588672
