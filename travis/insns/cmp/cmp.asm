default rel
	cmp byte [0x5e7], bl
	cmp byte [0x25a], cl
	cmp word [0xb8e], dx
	cmp word [0x548], di
	cmp ebx, edi
	cmp esi, esi
	cmp qword [0xc68], rsi
	cmp rdi, rbp
