default rel
	vpxor xmm11, xmm10, xmm6
	vpxor xmm11, xmm6
	vpxor xmm14, xmm1, xmm11
	vpxor ymm5, ymm14, ymm1
	vpxor ymm5, ymm1
	vpxor ymm6, ymm2, yword [0x4c2]
