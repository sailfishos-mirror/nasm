default rel
	vcmpgt_ospd xmm1, xmm11, xmm15
	vcmpgt_ospd xmm12, xmm12, xmm9
	vcmpgt_ospd ymm7, ymm0, yword [0x203]
	vcmpgt_ospd ymm5, ymm10, yword [0x9c8]
	vcmpgt_ospd k3, xmm0, oword [0x65d]
	vcmpgt_ospd k1, xmm4, xmm1
	vcmpgt_ospd k4, ymm10, ymm1
	vcmpgt_ospd k5, ymm15, ymm7
