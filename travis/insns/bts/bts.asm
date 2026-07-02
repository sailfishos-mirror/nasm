default rel
	bts bx, di
	bts dx, di
	bts ebx, ebx
	bts dword [0xa06], edi
	bts qword [0x3d0], rsi
	bts qword [0xcb9], rdi
	bts di, 0x14
	bts bp, 0x22
