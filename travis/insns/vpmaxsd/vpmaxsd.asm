default rel
	vpmaxsd xmm10, xmm11, xmm8
	vpmaxsd xmm10, xmm8
	vpmaxsd xmm7, xmm12, oword [0xc22]
	vpmaxsd ymm3, ymm6, yword [0xd69]
	vpmaxsd ymm3, yword [0xd69]
	vpmaxsd ymm3, ymm6, ymm13
	vpmaxsd xmm1, xmm2, xmm12
	vpmaxsd xmm1, xmm12
	vpmaxsd xmm9, xmm8, xmm4
	vpmaxsd ymm12, ymm11, ymm1
	vpmaxsd ymm12, ymm1
	vpmaxsd ymm1, ymm11, ymm9
