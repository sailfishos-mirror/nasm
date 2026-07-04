default rel
	vinsertf32x4 ymm15, ymm3, xmm2, 0x45
	vinsertf32x4 ymm15, xmm2, 0x45
	vinsertf32x4 ymm9, ymm10, oword [0x448], 0x6a
	vinsertf32x4 zmm4, zmm11, oword [0x1b9], 0xac
	vinsertf32x4 zmm4, oword [0x1b9], 0xac
	vinsertf32x4 zmm5, zmm0, xmm15, 0xc9
