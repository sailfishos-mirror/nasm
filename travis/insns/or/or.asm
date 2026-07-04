default rel
	or byte [0xa24], dl
	or bl, dl
	or bp, bx
	or word [0x916], si
	or dword [0xbba], esi
	or ebp, eax
	or qword [0x819], rdi
	or rbp, rbp
	or r14b, r11b
	or r13w, r8w
	or r13d, r8d
	or r15, r10
	or r29b, r17b
	or r22w, r17w
	or r25d, r25d
	or r23, r24
	or byte [eax+1], bl
	or byte [eax+64], dl
	or word [eax+1], cx
	or word [eax+64], di
	or dword [eax+1], esi
	or dword [eax+64], ebp
	or qword [eax+1], rbp
	or qword [eax+64], rcx
	or al, byte [eax+1]
	or dl, byte [eax+64]
	or cx, word [eax+1]
	or bx, word [eax+64]
	or edx, dword [eax+1]
	or ecx, dword [eax+64]
	or rdi, qword [eax+1]
	or rcx, qword [eax+64]
	or byte [eax+1], 0x2e
	or byte [eax+64], 0xe9
	or word [eax+1], 120
	or word [eax+64], 10
	or word [eax+1], 0x13b2
	or word [eax+64], 0x7928
	or dword [eax+1], -55
	or dword [eax+64], 74
	or dword [eax+1], 0xe6474c0
	or dword [eax+64], 0x1f72e37e
	or qword [eax+1], 4
	or qword [eax+64], 47
	or qword [eax+1], -222397584
	or qword [eax+64], 128390512
	or cl, al, byte [eax+1]
	or bl, cl, byte [eax+64]
	or si, di, word [eax+1]
	or si, bp, word [eax+64]
	or edx, ebx, dword [eax+1]
	or ebp, edx, dword [eax+64]
	or rsi, rdi, qword [eax+1]
	or rbp, rbp, qword [eax+64]
	or dl, byte [eax+1], dl
	or cl, byte [eax+64], dl
	or ax, word [eax+1], ax
	or bx, word [eax+64], bx
	or ebx, dword [eax+1], eax
	or edi, dword [eax+64], edx
	or rax, qword [eax+1], rdx
	or rdi, qword [eax+64], rsi
	or di, word [eax+1], -27
	or si, word [eax+64], -51
	or ebp, dword [eax+1], 56
	or edx, dword [eax+64], -11
	or rsi, qword [eax+1], 5
	or rdx, qword [eax+64], 118
	or cl, byte [eax+1], 0x5e
	or dl, byte [eax+64], 0x65
	or dx, word [eax+1], 0xed12
	or ax, word [eax+64], 0xd206
	or eax, dword [eax+1], 0x12b01206
	or ebx, dword [eax+64], 0x39f5d983
	or rcx, qword [eax+1], -220663921
	or rsi, qword [eax+64], -288737155
