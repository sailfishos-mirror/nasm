default rel
	vpshufb xmm9, xmm8, xmm6
	vpshufb xmm15, xmm4, xmm5
	vpshufb ymm2, ymm6, ymm1
	vpshufb ymm8, ymm9, ymm7
	vpshufb xmm4, xmm1, xmm10
	vpshufb xmm9, xmm13, oword [0xb11]
	vpshufb ymm1, ymm0, yword [0xee1]
	vpshufb ymm0, ymm4, yword [0xf56]
