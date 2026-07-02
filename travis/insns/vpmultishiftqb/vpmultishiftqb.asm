default rel
	vpmultishiftqb xmm11, xmm15, xmm4
	vpmultishiftqb xmm4, xmm15, xmm5
	vpmultishiftqb ymm14, ymm2, ymm11
	vpmultishiftqb ymm11, ymm1, yword [0xd0a]
	vpmultishiftqb zmm6, zmm5, zmm14
	vpmultishiftqb zmm1, zmm3, zmm14
