default rel
	shlx edi, edi, cl
	shlx ebp, edi, dl
	shlx ebp, ebx, si
	shlx ecx, edi, dx
	shlx edx, dword [0xa4e], ebx
	shlx eax, ebx, edx
	shlx ebp, eax, rcx
	shlx eax, dword [0x9ec], rbp
