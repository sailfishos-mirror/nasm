default rel
	vpunpcklbw xmm1, xmm6, oword [0x912]
	vpunpcklbw xmm1, oword [0x912]
	vpunpcklbw xmm5, xmm0, oword [0x17b]
	vpunpcklbw ymm7, ymm1, yword [0xec4]
	vpunpcklbw ymm7, yword [0xec4]
	vpunpcklbw ymm2, ymm3, ymm13
	vpunpcklbw xmm0, xmm12, xmm11
	vpunpcklbw xmm0, xmm11
	vpunpcklbw xmm1, xmm4, xmm5
	vpunpcklbw ymm1, ymm3, yword [0x8ed]
	vpunpcklbw ymm1, yword [0x8ed]
	vpunpcklbw ymm2, ymm13, ymm8
