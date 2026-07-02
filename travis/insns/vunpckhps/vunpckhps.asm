default rel
	vunpckhps xmm5, xmm10, oword [0xd20]
	vunpckhps xmm15, xmm12, oword [0x684]
	vunpckhps ymm5, ymm1, ymm3
	vunpckhps ymm14, ymm9, yword [0x128]
	vunpckhps xmm11, xmm8, xmm12
	vunpckhps xmm9, xmm6, xmm5
	vunpckhps ymm7, ymm13, ymm0
	vunpckhps ymm15, ymm6, ymm9
