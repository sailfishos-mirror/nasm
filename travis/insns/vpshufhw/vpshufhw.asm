default rel
	vpshufhw xmm2, oword [0x133], 0xbb
	vpshufhw xmm9, oword [0x306], 0x89
	vpshufhw ymm13, ymm12, 0x55
	vpshufhw ymm10, ymm13, 0xfc
	vpshufhw xmm5, xmm10, 0x7f
	vpshufhw xmm1, oword [0xca8], 0x14
	vpshufhw ymm13, ymm10, 0x15
	vpshufhw ymm3, ymm0, 0xf7
