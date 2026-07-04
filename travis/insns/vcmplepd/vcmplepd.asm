default rel
	vcmplepd xmm4, xmm11, xmm8
	vcmplepd xmm4, xmm8
	vcmplepd xmm0, xmm9, oword [0x7bb]
	vcmplepd ymm13, ymm12, ymm10
	vcmplepd ymm13, ymm10
	vcmplepd ymm10, ymm8, ymm0
	vcmplepd k2, xmm10, oword [0x3a8]
	vcmplepd k5, xmm3, xmm7
	vcmplepd k3, ymm2, ymm3
	vcmplepd k6, ymm5, ymm9
