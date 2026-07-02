default rel
	vpmovusqw xmm5, xmm8
	vpmovusqw xmm7, xmm3
	vpmovusqw xmm6, ymm2
	vpmovusqw xmm3, ymm9
	vpmovusqw xmm0, zmm2
	vpmovusqw xmm14, zmm14
	vpmovusqw dword [0x6a4], xmm6
	vpmovusqw dword [0x128], xmm2
