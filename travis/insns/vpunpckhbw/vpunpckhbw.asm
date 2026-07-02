default rel
	vpunpckhbw xmm13, xmm3, xmm9
	vpunpckhbw xmm6, xmm15, xmm11
	vpunpckhbw ymm7, ymm4, ymm7
	vpunpckhbw ymm3, ymm2, ymm4
	vpunpckhbw xmm14, xmm7, oword [0xaf2]
	vpunpckhbw xmm0, xmm13, xmm8
	vpunpckhbw ymm1, ymm6, ymm2
	vpunpckhbw ymm9, ymm15, ymm13
