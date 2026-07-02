default rel
	vpmovdb xmm6, xmm3
	vpmovdb xmm11, xmm12
	vpmovdb xmm5, ymm10
	vpmovdb xmm15, ymm11
	vpmovdb xmm3, zmm1
	vpmovdb xmm10, zmm11
	vpmovdb dword [0x26f], xmm6
	vpmovdb dword [0x96e], xmm9
