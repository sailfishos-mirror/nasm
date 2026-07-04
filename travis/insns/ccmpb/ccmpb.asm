default rel
	ccmpb 11, bl, bl
	ccmpb 11, cl, dl
	ccmpb 3, bp, dx
	ccmpb 5, cx, cx
	ccmpb 13, esi, edx
	ccmpb 13, ebp, ebx
	ccmpb 11, rbx, rdx
	ccmpb 13, qword [0xbd5], rdi
	ccmpb 11, r8b, r12b
	ccmpb 0, r11w, r9w
	ccmpb 4, r12d, r12d
	ccmpb 13, r13, r9
	ccmpb 1, r29b, r24b
	ccmpb 7, r31w, r16w
	ccmpb 14, r17d, r27d
	ccmpb 15, r17, r17
	ccmpb 5, byte [eax+1], cl
	ccmpb 10, byte [eax+64], cl
	ccmpb 4, word [eax+1], ax
	ccmpb 2, word [eax+64], cx
	ccmpb 9, dword [eax+1], ebx
	ccmpb 0, dword [eax+64], esi
	ccmpb 8, qword [eax+1], rsi
	ccmpb 13, qword [eax+64], rax
	ccmpb 8, dl, byte [eax+1]
	ccmpb 13, al, byte [eax+64]
	ccmpb 10, bx, word [eax+1]
	ccmpb 5, bx, word [eax+64]
	ccmpb 7, eax, dword [eax+1]
	ccmpb 11, edx, dword [eax+64]
	ccmpb 0, rbp, qword [eax+1]
	ccmpb 11, rsi, qword [eax+64]
	ccmpb 2, word [eax+1], -51
	ccmpb 1, word [eax+64], 48
	ccmpb 1, dword [eax+1], -4
	ccmpb 10, dword [eax+64], 50
	ccmpb 14, qword [eax+1], -75
	ccmpb 4, qword [eax+64], 64
	ccmpb 1, byte [eax+1], 0xd5
	ccmpb 14, byte [eax+64], 0xd2
	ccmpb 7, word [eax+1], 0xa622
	ccmpb 6, word [eax+64], 0xddd6
	ccmpb 14, dword [eax+1], 0x337a80a1
	ccmpb 3, dword [eax+64], 0x4a9e248
	ccmpb 9, qword [eax+1], -409014020
	ccmpb 10, qword [eax+64], 345437304
