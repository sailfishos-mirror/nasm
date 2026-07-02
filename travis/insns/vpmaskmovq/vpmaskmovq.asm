default rel
	vpmaskmovq xmm14, xmm4, oword [0xb18]
	vpmaskmovq xmm5, xmm13, oword [0x36b]
	vpmaskmovq ymm3, ymm13, yword [0x305]
	vpmaskmovq ymm3, ymm12, yword [0x2f6]
	vpmaskmovq oword [0x300], xmm15, xmm4
	vpmaskmovq oword [0xa90], xmm14, xmm7
	vpmaskmovq yword [0xcef], ymm2, ymm11
	vpmaskmovq yword [0xe2d], ymm11, ymm0
