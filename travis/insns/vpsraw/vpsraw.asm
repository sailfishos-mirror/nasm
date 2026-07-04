default rel
	vpsraw xmm0, xmm7, oword [0xb55]
	vpsraw xmm0, oword [0xb55]
	vpsraw xmm2, xmm0, oword [0x298]
	vpsraw xmm3, xmm1, 0xe2
	vpsraw xmm3, 0xe2
	vpsraw xmm6, xmm14, 0xc3
	vpsraw ymm5, ymm1, oword [0xddb]
	vpsraw ymm5, oword [0xddb]
	vpsraw ymm11, ymm15, xmm14
	vpsraw ymm10, ymm9, 0x24
	vpsraw ymm10, 0x24
	vpsraw ymm1, ymm6, 0xfc
