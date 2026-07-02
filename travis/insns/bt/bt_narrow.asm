	bt ax, di
	bt word [0x301], di
	bt ebx, eax
	bt ebp, ebp
	bt word [0xef4], 0x40
	bt si, 0x1f
