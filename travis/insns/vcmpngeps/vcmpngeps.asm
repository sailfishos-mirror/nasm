default rel
	vcmpngeps xmm14, xmm6, oword [0xcb9]
	vcmpngeps xmm14, oword [0xcb9]
	vcmpngeps xmm6, xmm6, xmm1
	vcmpngeps ymm12, ymm3, ymm10
	vcmpngeps ymm12, ymm10
	vcmpngeps ymm1, ymm13, yword [0x31b]
	vcmpngeps k5, xmm3, oword [0xb96]
	vcmpngeps k2, xmm10, xmm11
	vcmpngeps k3, ymm13, ymm15
	vcmpngeps k6, ymm7, ymm2
