default rel
	vpunpckldq xmm11, xmm7, xmm12
	vpunpckldq xmm11, xmm12
	vpunpckldq xmm6, xmm3, oword [0x2de]
	vpunpckldq ymm6, ymm14, yword [0xe15]
	vpunpckldq ymm6, yword [0xe15]
	vpunpckldq ymm10, ymm8, yword [0xe91]
	vpunpckldq xmm13, xmm11, oword [0x967]
	vpunpckldq xmm13, oword [0x967]
	vpunpckldq xmm11, xmm14, xmm5
	vpunpckldq ymm6, ymm5, ymm1
	vpunpckldq ymm6, ymm1
	vpunpckldq ymm3, ymm1, yword [0xf64]
