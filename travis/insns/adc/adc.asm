default rel
	adc al, bl
	adc bl, dl
	adc di, dx
	adc bp, bp
	adc eax, ecx
	adc ebx, ecx
	adc rax, rdi
	adc qword [0x926], rsi
	adc r15b, r8b
	adc r11w, r9w
	adc r11d, r14d
	adc r9, r13
	adc r28b, r16b
	adc r16w, r27w
	adc r17d, r24d
	adc r26, r16
	adc byte [eax+1], al
	adc byte [eax+64], al
	adc word [eax+1], si
	adc word [eax+64], bp
	adc dword [eax+1], edx
	adc dword [eax+64], esi
	adc qword [eax+1], rsi
	adc qword [eax+64], rbx
	adc al, byte [eax+1]
	adc al, byte [eax+64]
	adc ax, word [eax+1]
	adc ax, word [eax+64]
	adc ebx, dword [eax+1]
	adc edx, dword [eax+64]
	adc rdi, qword [eax+1]
	adc rdx, qword [eax+64]
	adc byte [eax+1], 0xb2
	adc byte [eax+64], 0x18
	adc word [eax+1], 13
	adc word [eax+64], 74
	adc word [eax+1], 0x9f94
	adc word [eax+64], 0xcb0a
	adc dword [eax+1], 36
	adc dword [eax+64], 51
	adc dword [eax+1], 0x196c79c9
	adc dword [eax+64], 0x1cfe069c
	adc qword [eax+1], -25
	adc qword [eax+64], -121
	adc qword [eax+1], -506139423
	adc qword [eax+64], -173191687
	adc dl, al, byte [eax+1]
	adc cl, al, byte [eax+64]
	adc dx, dx, word [eax+1]
	adc cx, cx, word [eax+64]
	adc ebp, edx, dword [eax+1]
	adc ebp, eax, dword [eax+64]
	adc rax, rax, qword [eax+1]
	adc rdx, rdx, qword [eax+64]
	adc dl, byte [eax+1], bl
	adc al, byte [eax+64], bl
	adc ax, word [eax+1], bx
	adc bx, word [eax+64], cx
	adc eax, dword [eax+1], ecx
	adc eax, dword [eax+64], ebx
	adc rdi, qword [eax+1], rdx
	adc rdi, qword [eax+64], rsi
	adc dx, word [eax+1], -38
	adc bp, word [eax+64], 13
	adc edi, dword [eax+1], 95
	adc ecx, dword [eax+64], -86
	adc rdi, qword [eax+1], 24
	adc rsi, qword [eax+64], -73
	adc dl, byte [eax+1], 0xcc
	adc bl, byte [eax+64], 0x8d
	adc bp, word [eax+1], 0x5e1
	adc bx, word [eax+64], 0xe97f
	adc edi, dword [eax+1], 0x91816a7
	adc edi, dword [eax+64], 0x1c9b9a8
	adc rsi, qword [eax+1], -428886289
	adc rsi, qword [eax+64], 6139295
