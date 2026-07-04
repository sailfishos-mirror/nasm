default rel
	vpminsw xmm12, xmm2, xmm8
	vpminsw xmm12, xmm8
	vpminsw xmm11, xmm6, xmm11
	vpminsw ymm4, ymm8, ymm2
	vpminsw ymm4, ymm2
	vpminsw ymm14, ymm4, ymm10
	vpminsw xmm10, xmm2, oword [0xeef]
	vpminsw xmm10, oword [0xeef]
	vpminsw xmm14, xmm14, oword [0xc44]
	vpminsw ymm9, ymm9, ymm15
	vpminsw ymm9, ymm15
	vpminsw ymm0, ymm9, ymm1
