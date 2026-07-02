default rel
	vcmpeq_ospd xmm7, xmm15, xmm1
	vcmpeq_ospd xmm4, xmm10, xmm2
	vcmpeq_ospd ymm10, ymm11, ymm11
	vcmpeq_ospd ymm12, ymm1, ymm10
	vcmpeq_ospd k3, xmm13, xmm9
	vcmpeq_ospd k3, xmm3, oword [0xaae]
	vcmpeq_ospd k4, ymm4, yword [0x2df]
	vcmpeq_ospd k7, ymm5, ymm6
