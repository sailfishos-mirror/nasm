default rel
	vpblendw xmm3, xmm15, oword [0xa85], 0x26
	vpblendw xmm3, oword [0xa85], 0x26
	vpblendw xmm15, xmm8, xmm8, 0x6e
	vpblendw ymm11, ymm1, yword [0xd81], 0x2
	vpblendw ymm11, yword [0xd81], 0x2
	vpblendw ymm14, ymm14, yword [0x9cb], 0x72
