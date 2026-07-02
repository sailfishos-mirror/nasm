default rel
	vpgatherqd xmm13, [xmm13*1], xmm12
	vpgatherqd xmm13, [xmm11*1], xmm12
	vpgatherqd xmm10, [ymm1*1], xmm4
	vpgatherqd xmm9, [ymm5*1], xmm1
	vpgatherqd xmm7, [xmm10*1]
	vpgatherqd xmm7, [xmm9*1]
	vpgatherqd xmm5, [ymm12*1]
	vpgatherqd xmm2, [ymm0*1]
