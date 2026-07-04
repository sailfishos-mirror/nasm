default rel
	vcmpleps xmm13, xmm3, xmm1
	vcmpleps xmm13, xmm1
	vcmpleps xmm11, xmm9, oword [0xeb0]
	vcmpleps ymm10, ymm7, yword [0xdde]
	vcmpleps ymm10, yword [0xdde]
	vcmpleps ymm11, ymm13, ymm14
	vcmpleps k5, xmm7, oword [0x511]
	vcmpleps k4, xmm9, xmm5
	vcmpleps k4, ymm10, yword [0x93f]
	vcmpleps k1, ymm13, ymm7
