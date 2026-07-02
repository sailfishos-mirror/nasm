default rel
	salx ebx, ebx, cl
	salx ecx, dword [0xdd2], al
	salx edx, dword [0x631], ax
	salx ebp, dword [0xd13], di
	salx esi, ebp, ebp
	salx ecx, edi, edx
	salx ecx, edx, rbp
	salx edi, ecx, rbp
