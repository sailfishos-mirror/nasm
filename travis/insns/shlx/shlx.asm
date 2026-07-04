default rel
	shlx edi, edi, cl
	shlx edi, cl
	shlx ebp, edi, dl
	shlx ebp, ebx, si
	shlx ebp, si
	shlx ecx, edi, dx
	shlx edx, dword [0xa4e], ebx
	shlx edx, ebx
	shlx eax, ebx, edx
	shlx ebp, eax, rcx
	shlx ebp, rcx
	shlx eax, dword [0x9ec], rbp
