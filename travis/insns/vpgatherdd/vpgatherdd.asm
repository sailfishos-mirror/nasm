default rel
	vpgatherdd xmm4, [xmm11*1], xmm12
	vpgatherdd xmm3, [xmm12*1], xmm7
	vpgatherdd ymm14, [ymm3*1], ymm2
	vpgatherdd ymm1, [ymm3*1], ymm1
	vpgatherdd xmm7, [xmm9*1]
	vpgatherdd xmm8, [xmm6*1]
	vpgatherdd ymm7, [ymm13*1]
	vpgatherdd ymm8, [ymm11*1]
