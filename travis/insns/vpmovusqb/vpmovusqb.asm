default rel
	vpmovusqb xmm0, xmm0
	vpmovusqb xmm11, xmm8
	vpmovusqb xmm11, ymm11
	vpmovusqb xmm4, ymm6
	vpmovusqb xmm14, zmm8
	vpmovusqb xmm6, zmm10
	vpmovusqb word [0x7a1], xmm6
	vpmovusqb word [0xd44], xmm0
