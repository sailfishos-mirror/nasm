default rel
	vpmaddwd xmm0, xmm3, xmm14
	vpmaddwd xmm3, xmm2, xmm5
	vpmaddwd ymm12, ymm7, yword [0xc15]
	vpmaddwd ymm3, ymm14, ymm12
	vpmaddwd xmm0, xmm15, xmm5
	vpmaddwd xmm0, xmm12, xmm4
	vpmaddwd ymm11, ymm11, ymm12
	vpmaddwd ymm14, ymm12, ymm0
