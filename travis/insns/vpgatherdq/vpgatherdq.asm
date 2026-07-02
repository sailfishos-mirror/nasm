default rel
	vpgatherdq xmm7, [xmm10*1], xmm14
	vpgatherdq xmm14, [xmm2*1], xmm7
	vpgatherdq ymm2, [xmm2*1], ymm1
	vpgatherdq ymm13, [xmm10*1], ymm9
	vpgatherdq xmm15, [xmm2*1]
	vpgatherdq xmm5, [xmm5*1]
	vpgatherdq ymm0, [xmm13*1]
	vpgatherdq ymm10, [xmm10*1]
