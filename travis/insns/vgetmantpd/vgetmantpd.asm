default rel
	vgetmantpd xmm6, xmm6, 0x35
	vgetmantpd xmm1, xmm5, 0x6c
	vgetmantpd ymm2, ymm9, 0x18
	vgetmantpd ymm9, ymm6, 0x32
	vgetmantpd zmm10, zword [0xb6c], 0x80
	vgetmantpd zmm0, zmm13, 0x79
