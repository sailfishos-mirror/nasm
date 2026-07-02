default rel
	vpsllq xmm4, xmm14, xmm6
	vpsllq xmm12, xmm10, oword [0xc25]
	vpsllq xmm1, xmm5, 0x7b
	vpsllq xmm0, xmm2, 0xb2
	vpsllq ymm11, ymm3, xmm0
	vpsllq ymm13, ymm10, xmm12
	vpsllq ymm9, ymm7, 0x29
	vpsllq ymm1, ymm8, 0x96
