default rel
	vpblendvb xmm15, xmm11, xmm8, xmm13
	vpblendvb xmm9, xmm15, oword [0x217], xmm14
	vpblendvb ymm3, ymm14, yword [0x3f4], ymm5
	vpblendvb ymm12, ymm9, ymm4, ymm13
