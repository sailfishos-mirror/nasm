default rel
	bt ax, di
	bt word [0x301], di
	bt ebx, eax
	bt ebp, ebp
	bt rcx, rdi
	bt rax, rax
	bt word [0xef4], 0x40
	bt si, 0x1f
