default rel
	vcmpnlepd xmm11, xmm14, oword [0x60a]
	vcmpnlepd xmm5, xmm11, xmm9
	vcmpnlepd ymm15, ymm11, ymm13
	vcmpnlepd ymm10, ymm15, ymm7
	vcmpnlepd k4, xmm15, xmm12
	vcmpnlepd k6, xmm7, xmm5
	vcmpnlepd k5, ymm6, ymm7
	vcmpnlepd k5, ymm8, ymm0
