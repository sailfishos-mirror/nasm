default rel
	vcmpltpd xmm8, xmm2, xmm5
	vcmpltpd xmm3, xmm14, xmm10
	vcmpltpd ymm7, ymm6, ymm12
	vcmpltpd ymm4, ymm15, ymm11
	vcmpltpd k2, xmm14, xmm6
	vcmpltpd k3, xmm7, xmm15
	vcmpltpd k4, ymm5, ymm6
	vcmpltpd k5, ymm3, yword [0x7ab]
