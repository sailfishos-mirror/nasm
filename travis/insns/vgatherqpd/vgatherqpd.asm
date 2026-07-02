default rel
	vgatherqpd xmm14, [xmm1*1], xmm0
	vgatherqpd xmm0, [xmm2*1], xmm7
	vgatherqpd ymm12, [ymm14*1], ymm2
	vgatherqpd ymm2, [ymm6*1], ymm10
	vgatherqpd xmm13, [xmm6*1]
	vgatherqpd xmm15, [xmm0*1]
	vgatherqpd ymm9, [ymm9*1]
	vgatherqpd ymm9, [ymm14*1]
