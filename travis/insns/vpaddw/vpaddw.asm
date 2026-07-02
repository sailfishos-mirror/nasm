default rel
	vpaddw xmm10, xmm3, xmm11
	vpaddw xmm6, xmm14, xmm7
	vpaddw ymm0, ymm2, ymm9
	vpaddw ymm15, ymm14, ymm1
	vpaddw xmm9, xmm11, oword [0xae8]
	vpaddw xmm15, xmm6, oword [0x143]
	vpaddw ymm9, ymm0, ymm0
	vpaddw ymm10, ymm8, yword [0x9ca]
