default rel
	vpsrad xmm15, xmm6, xmm6
	vpsrad xmm3, xmm6, oword [0x191]
	vpsrad xmm6, xmm6, 0x8c
	vpsrad xmm15, xmm2, 0x87
	vpsrad ymm4, ymm6, xmm3
	vpsrad ymm8, ymm7, xmm2
	vpsrad ymm13, ymm9, 0x4f
	vpsrad ymm2, ymm4, 0xc1
