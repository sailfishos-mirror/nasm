default rel
	vcmpgtpd xmm14, xmm11, oword [0xe5d]
	vcmpgtpd xmm14, oword [0xe5d]
	vcmpgtpd xmm6, xmm13, oword [0x797]
	vcmpgtpd ymm11, ymm0, ymm14
	vcmpgtpd ymm11, ymm14
	vcmpgtpd ymm13, ymm6, yword [0xd29]
	vcmpgtpd k4, xmm3, xmm14
	vcmpgtpd k2, xmm1, xmm14
	vcmpgtpd k7, ymm8, yword [0xaa2]
	vcmpgtpd k7, ymm3, yword [0xe11]
