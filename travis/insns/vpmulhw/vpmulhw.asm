default rel
	vpmulhw xmm12, xmm6, oword [0x190]
	vpmulhw xmm15, xmm7, xmm9
	vpmulhw ymm4, ymm9, ymm13
	vpmulhw ymm14, ymm0, ymm13
	vpmulhw xmm7, xmm0, oword [0xcbd]
	vpmulhw xmm12, xmm4, xmm4
	vpmulhw ymm1, ymm6, yword [0xd73]
	vpmulhw ymm1, ymm0, yword [0x932]
