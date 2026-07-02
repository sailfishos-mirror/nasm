default rel
	vcmpgeps xmm6, xmm2, oword [0xf31]
	vcmpgeps xmm14, xmm15, oword [0x75c]
	vcmpgeps ymm1, ymm5, ymm11
	vcmpgeps ymm11, ymm9, ymm7
	vcmpgeps k3, xmm14, oword [0x3d0]
	vcmpgeps k7, xmm6, xmm9
	vcmpgeps k2, ymm3, yword [0x14e]
	vcmpgeps k7, ymm7, ymm9
