default rel
	vpgatherqq xmm12, [xmm12*1], xmm1
	vpgatherqq xmm0, [xmm14*1], xmm1
	vpgatherqq ymm11, [ymm15*1], ymm12
	vpgatherqq ymm8, [ymm12*1], ymm12
	vpgatherqq xmm11, [xmm15*1]
	vpgatherqq xmm6, [xmm13*1]
	vpgatherqq ymm7, [ymm12*1]
	vpgatherqq ymm10, [ymm15*1]
