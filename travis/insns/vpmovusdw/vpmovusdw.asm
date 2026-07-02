default rel
	vpmovusdw xmm6, xmm8
	vpmovusdw xmm14, xmm9
	vpmovusdw xmm6, ymm1
	vpmovusdw xmm7, ymm3
	vpmovusdw ymm7, zmm8
	vpmovusdw ymm13, zmm0
	vpmovusdw qword [0xb02], xmm1
	vpmovusdw qword [0x83a], xmm8
