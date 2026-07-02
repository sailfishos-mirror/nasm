default rel
	vcmple_ospd xmm13, xmm7, xmm11
	vcmple_ospd xmm7, xmm6, oword [0xf23]
	vcmple_ospd ymm0, ymm12, yword [0x509]
	vcmple_ospd ymm13, ymm10, ymm9
	vcmple_ospd k5, xmm8, xmm10
	vcmple_ospd k3, xmm5, xmm14
	vcmple_ospd k3, ymm10, yword [0xa93]
	vcmple_ospd k7, ymm1, ymm2
