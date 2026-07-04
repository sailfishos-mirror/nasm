default rel
	ctestns 15, al, cl
	ctestns 0, cl, dl
	ctestns 11, cx, cx
	ctestns 15, cx, cx
	ctestns 15, esi, ebx
	ctestns 12, edi, esi
	ctestns 6, qword [0xd8d], rdx
	ctestns 8, qword [0x919], rbx
	ctestns 15, r11b, r9b
	ctestns 5, r8w, r10w
	ctestns 6, r12d, r10d
	ctestns 2, r9, r14
	ctestns 6, r22b, r17b
	ctestns 1, r21w, r19w
	ctestns 12, r20d, r28d
	ctestns 14, r25, r22
	ctestns 12, byte [eax+1], al
	ctestns 5, byte [eax+64], al
	ctestns 0, word [eax+1], di
	ctestns 15, word [eax+64], cx
	ctestns 15, dword [eax+1], ecx
	ctestns 2, dword [eax+64], eax
	ctestns 9, qword [eax+1], rax
	ctestns 4, qword [eax+64], rsi
	ctestns 3, byte [eax+1], 0x5
	ctestns 12, byte [eax+64], 0xa8
	ctestns 7, word [eax+1], 0x3b53
	ctestns 6, word [eax+64], 0x77e1
	ctestns 10, dword [eax+1], 0x133887ea
	ctestns 14, dword [eax+64], 0x267da035
	ctestns 7, qword [eax+1], -63057385
	ctestns 10, qword [eax+64], 27044069
