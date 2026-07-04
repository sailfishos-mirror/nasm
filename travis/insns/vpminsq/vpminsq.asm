default rel
	vpminsq xmm9, xmm2, xmm2
	vpminsq xmm9, xmm2
	vpminsq xmm11, xmm13, xmm2
	vpminsq ymm1, ymm12, ymm11
	vpminsq ymm1, ymm11
	vpminsq ymm8, ymm13, yword [0x263]
	vpminsq zmm13, zmm8, zmm15
	vpminsq zmm13, zmm15
	vpminsq zmm11, zmm5, zmm4
