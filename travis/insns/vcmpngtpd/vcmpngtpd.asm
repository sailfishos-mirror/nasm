default rel
	vcmpngtpd xmm1, xmm8, xmm13
	vcmpngtpd xmm11, xmm12, oword [0xc45]
	vcmpngtpd ymm12, ymm4, ymm2
	vcmpngtpd ymm8, ymm10, ymm14
	vcmpngtpd k6, xmm1, xmm12
	vcmpngtpd k6, xmm10, xmm2
	vcmpngtpd k1, ymm14, ymm7
	vcmpngtpd k4, ymm12, ymm15
