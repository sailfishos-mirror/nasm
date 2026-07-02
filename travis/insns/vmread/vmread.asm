default rel
	vmread dword [0xd4f], esi
	vmread esi, eax
	vmread rax, rdi
	vmread qword [0x1b6], rdi
