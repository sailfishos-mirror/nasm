default rel
	vpandn xmm13, xmm3, xmm12
	vpandn xmm2, xmm3, oword [0x6e1]
	vpandn ymm0, ymm10, ymm0
	vpandn ymm14, ymm12, yword [0x40b]
