default rel
	vpminsb xmm5, xmm5, xmm15
	vpminsb xmm4, xmm7, xmm12
	vpminsb ymm7, ymm12, ymm1
	vpminsb ymm10, ymm14, yword [0xdfb]
	vpminsb xmm13, xmm4, xmm3
	vpminsb xmm6, xmm6, oword [0x183]
	vpminsb ymm0, ymm4, yword [0xb11]
	vpminsb ymm5, ymm8, yword [0xbef]
