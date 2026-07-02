default rel
	vpblendmq xmm12, xmm14, oword [0x7bd]
	vpblendmq xmm3, xmm4, xmm14
	vpblendmq ymm11, ymm12, ymm1
	vpblendmq ymm9, ymm7, ymm10
	vpblendmq zmm11, zmm12, zmm10
	vpblendmq zmm0, zmm4, zmm4
