	shrd cx, si, 0x5b
	shrd cx, bp, 0x3f
	shrd eax, edi, 0x48
	shrd dword [0xe0b], eax, 0x80
	shrd word [0xcda], si, cl
	shrd dx, cx, cl
