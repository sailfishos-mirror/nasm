default rel
	vpmulld xmm4, xmm12, xmm1
	vpmulld xmm6, xmm6, xmm4
	vpmulld ymm2, ymm1, yword [0xc9d]
	vpmulld ymm15, ymm3, yword [0xf84]
	vpmulld xmm9, xmm3, xmm4
	vpmulld xmm13, xmm4, xmm8
	vpmulld ymm5, ymm11, ymm2
	vpmulld ymm7, ymm7, ymm9
