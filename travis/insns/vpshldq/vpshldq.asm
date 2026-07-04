default rel
	vpshldq xmm1, xmm1, xmm4, 0xc9
	vpshldq xmm1, xmm4, 0xc9
	vpshldq xmm2, xmm8, xmm2, 0xb
	vpshldq ymm15, ymm4, ymm15, 0xcf
	vpshldq ymm15, ymm15, 0xcf
	vpshldq ymm12, ymm12, ymm15, 0xbf
	vpshldq zmm14, zmm8, zmm4, 0x44
	vpshldq zmm14, zmm4, 0x44
	vpshldq zmm3, zmm1, zmm15, 0x82
