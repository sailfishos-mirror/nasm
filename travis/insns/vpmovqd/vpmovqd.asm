default rel
	vpmovqd xmm10, xmm14
	vpmovqd xmm8, xmm0
	vpmovqd xmm0, ymm10
	vpmovqd xmm7, ymm0
	vpmovqd ymm13, zmm5
	vpmovqd ymm13, zmm15
	vpmovqd qword [0xef3], xmm8
	vpmovqd qword [0x80b], xmm5
