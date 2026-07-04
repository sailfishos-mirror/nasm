default rel
	vpaddusw xmm13, xmm5, oword [0x490]
	vpaddusw xmm13, oword [0x490]
	vpaddusw xmm14, xmm12, xmm13
	vpaddusw ymm3, ymm1, ymm6
	vpaddusw ymm3, ymm6
	vpaddusw ymm7, ymm1, yword [0xd62]
	vpaddusw xmm8, xmm15, xmm3
	vpaddusw xmm8, xmm3
	vpaddusw xmm3, xmm14, xmm15
	vpaddusw ymm6, ymm10, yword [0x961]
	vpaddusw ymm6, yword [0x961]
	vpaddusw ymm6, ymm8, yword [0xfac]
