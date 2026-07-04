default rel
	rcl dl, 1
	rcl byte [0xfbe], 1
	rcl cx, 1
	rcl ax, 1
	rcl eax, 1
	rcl dword [0xc4e], 1
	rcl rdx, 1
	rcl rsi, 1
	rcl r15b, 1
	rcl r9w, 1
	rcl r12d, 1
	rcl r10, 1
	rcl r24b, 1
	rcl r29w, 1
	rcl r26d, 1
	rcl r25, 1
	rcl byte [eax+1], 1
	rcl byte [eax+64], 1
	rcl word [eax+1], 1
	rcl word [eax+64], 1
	rcl dword [eax+1], 1
	rcl dword [eax+64], 1
	rcl qword [eax+1], 1
	rcl qword [eax+64], 1
	rcl byte [eax+1], cl
	rcl byte [eax+64], cl
	rcl word [eax+1], cl
	rcl word [eax+64], cl
	rcl dword [eax+1], cl
	rcl dword [eax+64], cl
	rcl qword [eax+1], cl
	rcl qword [eax+64], cl
	rcl byte [eax+1], cx
	rcl byte [eax+64], cx
	rcl word [eax+1], cx
	rcl word [eax+64], cx
	rcl dword [eax+1], cx
	rcl dword [eax+64], cx
	rcl qword [eax+1], cx
	rcl qword [eax+64], cx
	rcl byte [eax+1], ecx
	rcl byte [eax+64], ecx
	rcl word [eax+1], ecx
	rcl word [eax+64], ecx
	rcl dword [eax+1], ecx
	rcl dword [eax+64], ecx
	rcl qword [eax+1], ecx
	rcl qword [eax+64], ecx
	rcl byte [eax+1], 0x9
	rcl byte [eax+64], 0xbc
	rcl word [eax+1], 0x89
	rcl word [eax+64], 0x2e
	rcl dword [eax+1], 0x77
	rcl dword [eax+64], 0xac
	rcl qword [eax+1], 0x82
	rcl qword [eax+64], 0xc7
	rcl cl, byte [eax+1], 1
	rcl al, byte [eax+64], 1
	rcl di, word [eax+1], 1
	rcl di, word [eax+64], 1
	rcl eax, dword [eax+1], 1
	rcl ebx, dword [eax+64], 1
	rcl rbp, qword [eax+1], 1
	rcl rbp, qword [eax+64], 1
	rcl dl, byte [eax+1], cl
	rcl al, byte [eax+64], cl
	rcl bx, word [eax+1], cl
	rcl ax, word [eax+64], cl
	rcl esi, dword [eax+1], cl
	rcl esi, dword [eax+64], cl
	rcl rdx, qword [eax+1], cl
	rcl rbp, qword [eax+64], cl
	rcl bl, byte [eax+1], cx
	rcl cl, byte [eax+64], cx
	rcl cx, word [eax+1], cx
	rcl bp, word [eax+64], cx
	rcl esi, dword [eax+1], cx
	rcl ecx, dword [eax+64], cx
	rcl rsi, qword [eax+1], cx
	rcl rsi, qword [eax+64], cx
	rcl cl, byte [eax+1], ecx
	rcl dl, byte [eax+64], ecx
	rcl bp, word [eax+1], ecx
	rcl bp, word [eax+64], ecx
	rcl ebx, dword [eax+1], ecx
	rcl ecx, dword [eax+64], ecx
	rcl rbp, qword [eax+1], ecx
	rcl rax, qword [eax+64], ecx
	rcl dl, byte [eax+1], 0x78
	rcl dl, byte [eax+64], 0xf3
	rcl si, word [eax+1], 0xdb
	rcl dx, word [eax+64], 0x7a
	rcl edx, dword [eax+1], 0xa8
	rcl edi, dword [eax+64], 0x2c
	rcl rbx, qword [eax+1], 0xda
	rcl rax, qword [eax+64], 0xf6
