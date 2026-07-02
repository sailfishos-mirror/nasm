default rel
	vcmpgepd xmm3, xmm0, xmm2
	vcmpgepd xmm3, xmm5, oword [0xa85]
	vcmpgepd ymm2, ymm15, yword [0x193]
	vcmpgepd ymm11, ymm9, yword [0xff2]
	vcmpgepd k4, xmm14, xmm1
	vcmpgepd k3, xmm7, xmm6
	vcmpgepd k3, ymm6, yword [0xb07]
	vcmpgepd k4, ymm12, ymm13
