default rel
	vcmpge_ospd xmm3, xmm8, xmm3
	vcmpge_ospd xmm3, xmm3
	vcmpge_ospd xmm5, xmm6, xmm2
	vcmpge_ospd ymm12, ymm9, ymm8
	vcmpge_ospd ymm12, ymm8
	vcmpge_ospd ymm1, ymm9, yword [0x6e5]
	vcmpge_ospd k3, xmm10, xmm4
	vcmpge_ospd k5, xmm15, xmm6
	vcmpge_ospd k7, ymm5, yword [0x30b]
	vcmpge_ospd k7, ymm8, ymm9
