default rel
	vpmaddubsw xmm11, xmm12, oword [0xbd7]
	vpmaddubsw xmm11, oword [0xbd7]
	vpmaddubsw xmm3, xmm10, oword [0xbae]
	vpmaddubsw ymm1, ymm10, ymm11
	vpmaddubsw ymm1, ymm11
	vpmaddubsw ymm13, ymm6, ymm11
	vpmaddubsw xmm3, xmm5, xmm1
	vpmaddubsw xmm3, xmm1
	vpmaddubsw xmm3, xmm5, xmm13
	vpmaddubsw ymm7, ymm12, ymm1
	vpmaddubsw ymm7, ymm1
	vpmaddubsw ymm11, ymm3, yword [0xabb]
