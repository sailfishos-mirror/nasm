default rel
	vpsubusw xmm10, xmm0, xmm11
	vpsubusw xmm10, xmm11
	vpsubusw xmm8, xmm11, xmm5
	vpsubusw ymm6, ymm13, ymm4
	vpsubusw ymm6, ymm4
	vpsubusw ymm8, ymm7, ymm12
	vpsubusw xmm10, xmm3, xmm13
	vpsubusw xmm10, xmm13
	vpsubusw xmm6, xmm11, oword [0xd4d]
	vpsubusw ymm2, ymm7, ymm10
	vpsubusw ymm2, ymm10
	vpsubusw ymm9, ymm5, ymm14
