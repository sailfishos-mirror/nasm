default rel
	vshufps xmm10, xmm8, xmm1, 0x1f
	vshufps xmm10, xmm1, 0x1f
	vshufps xmm9, xmm4, xmm6, 0x38
	vshufps ymm1, ymm6, ymm2, 0x70
	vshufps ymm1, ymm2, 0x70
	vshufps ymm12, ymm6, ymm3, 0xb6
	vshufps xmm13, xmm11, oword [0x647], 0xbc
	vshufps xmm13, oword [0x647], 0xbc
	vshufps xmm7, xmm12, oword [0xd13], 0xf
	vshufps ymm10, ymm2, ymm2, 0xaa
	vshufps ymm10, ymm2, 0xaa
	vshufps ymm15, ymm5, ymm0, 0x7e
