default rel
	imul byte [0xd2f]
	imul byte [0x565]
	imul bx
	imul si
	imul edx
	imul eax
	imul rdi
	imul rdx
	imul r13b
	imul r10w
	imul r11d
	imul r11
	imul r21b
	imul r31w
	imul r28d
	imul r25
	imul byte [eax+1]
	imul byte [eax+64]
	imul word [eax+1]
	imul word [eax+64]
	imul dword [eax+1]
	imul dword [eax+64]
	imul qword [eax+1]
	imul qword [eax+64]
	imul bp, word [eax+1]
	imul bp, word [eax+64]
	imul ebp, dword [eax+1]
	imul eax, dword [eax+64]
	imul rdi, qword [eax+1]
	imul rdx, qword [eax+64]
	imul bx, word [eax+1], -113
	imul ax, word [eax+64], -72
	imul ebx, dword [eax+1], -69
	imul eax, dword [eax+64], 66
	imul rcx, qword [eax+1], 52
	imul rdi, qword [eax+64], -34
	imul dx, word [eax+1], 0xb256
	imul bx, word [eax+64], 0x2fa4
	imul edx, dword [eax+1], 0xd4e5978
	imul ebx, dword [eax+64], 0x32623477
	imul rsi, qword [eax+1], -105510694
	imul rbx, qword [eax+64], -378722242
	imul dx, bx, word [eax+1]
	imul di, bx, word [eax+64]
	imul esi, edx, dword [eax+1]
	imul edx, esi, dword [eax+64]
	imul rbp, rcx, qword [eax+1]
	imul rcx, rdi, qword [eax+64]
	imul ax, word [eax+1], -90
	imul dx, word [eax+64], 66
	imul eax, dword [eax+1], -63
	imul esi, dword [eax+64], 56
	imul rdi, qword [eax+1], 75
	imul rdi, qword [eax+64], 46
	imul dx, word [eax+1], 0xea7b
	imul bp, word [eax+64], 0x73fd
	imul ebp, dword [eax+1], 0x3809395
	imul edi, dword [eax+64], 0x2d7018d1
	imul rdx, qword [eax+1], 287876982
	imul rdx, qword [eax+64], 371340418
