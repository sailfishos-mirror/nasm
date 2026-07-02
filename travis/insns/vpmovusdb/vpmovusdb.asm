default rel
	vpmovusdb xmm2, xmm1
	vpmovusdb xmm0, xmm3
	vpmovusdb xmm8, ymm14
	vpmovusdb xmm0, ymm2
	vpmovusdb xmm3, zmm1
	vpmovusdb xmm13, zmm8
	vpmovusdb dword [0x21d], xmm6
	vpmovusdb dword [0xb2d], xmm5
