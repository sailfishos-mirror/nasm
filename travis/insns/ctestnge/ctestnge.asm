default rel
	ctestnge 8, dl, al
	ctestnge 7, al, al
	ctestnge 3, ax, bp
	ctestnge 9, dx, bp
	ctestnge 7, edi, edi
	ctestnge 3, dword [0x331], ebp
	ctestnge 6, rdi, rsi
	ctestnge 1, rsi, rdi
	ctestnge 5, r9b, r12b
	ctestnge 2, r9w, r9w
	ctestnge 7, r10d, r13d
	ctestnge 6, r12, r11
	ctestnge 7, r18b, r28b
	ctestnge 1, r27w, r27w
	ctestnge 10, r30d, r17d
	ctestnge 5, r31, r28
	ctestnge 0, byte [eax+1], bl
	ctestnge 8, byte [eax+64], dl
	ctestnge 11, word [eax+1], di
	ctestnge 1, word [eax+64], dx
	ctestnge 8, dword [eax+1], edx
	ctestnge 9, dword [eax+64], ebp
	ctestnge 13, qword [eax+1], rcx
	ctestnge 7, qword [eax+64], rdx
	ctestnge 11, byte [eax+1], 0x4a
	ctestnge 13, byte [eax+64], 0xb4
	ctestnge 7, word [eax+1], 0xe39
	ctestnge 1, word [eax+64], 0xb25c
	ctestnge 7, dword [eax+1], 0x39b8a2ee
	ctestnge 4, dword [eax+64], 0x18f47a62
	ctestnge 8, qword [eax+1], 4978590
	ctestnge 2, qword [eax+64], -180127896
