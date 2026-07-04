default rel
	vshufpd xmm4, xmm1, xmm2, 0x41
	vshufpd xmm4, xmm2, 0x41
	vshufpd xmm3, xmm6, oword [0x52e], 0x45
	vshufpd ymm5, ymm8, ymm11, 0x1d
	vshufpd ymm5, ymm11, 0x1d
	vshufpd ymm5, ymm9, ymm0, 0x5b
	vshufpd xmm3, xmm13, xmm2, 0x37
	vshufpd xmm3, xmm2, 0x37
	vshufpd xmm9, xmm7, oword [0x9ea], 0xd4
	vshufpd ymm7, ymm4, yword [0x526], 0xbb
	vshufpd ymm7, yword [0x526], 0xbb
	vshufpd ymm5, ymm0, ymm9, 0x74
