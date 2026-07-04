default rel
	ctestnle 8, byte [0xd21], dl
	ctestnle 8, al, dl
	ctestnle 7, word [0xc46], si
	ctestnle 15, word [0xde4], si
	ctestnle 1, edi, ecx
	ctestnle 8, edi, edi
	ctestnle 8, rcx, rcx
	ctestnle 9, qword [0xce4], rax
	ctestnle 2, r10b, r11b
	ctestnle 0, r11w, r12w
	ctestnle 7, r10d, r11d
	ctestnle 11, r10, r8
	ctestnle 5, r22b, r22b
	ctestnle 1, r25w, r31w
	ctestnle 1, r21d, r22d
	ctestnle 7, r20, r22
	ctestnle 7, byte [eax+1], bl
	ctestnle 14, byte [eax+64], bl
	ctestnle 0, word [eax+1], si
	ctestnle 11, word [eax+64], di
	ctestnle 4, dword [eax+1], edi
	ctestnle 1, dword [eax+64], edx
	ctestnle 5, qword [eax+1], rsi
	ctestnle 10, qword [eax+64], rbp
	ctestnle 9, byte [eax+1], 0x59
	ctestnle 0, byte [eax+64], 0xdc
	ctestnle 2, word [eax+1], 0x8682
	ctestnle 9, word [eax+64], 0x2c1d
	ctestnle 2, dword [eax+1], 0x3a5d941c
	ctestnle 4, dword [eax+64], 0xb10b9fc
	ctestnle 6, qword [eax+1], 332394512
	ctestnle 13, qword [eax+64], -465038390
