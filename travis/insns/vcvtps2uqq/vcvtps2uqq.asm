default rel
	vcvtps2uqq xmm14, xmm8
	vcvtps2uqq xmm6, xmm14
	vcvtps2uqq ymm1, xmm5
	vcvtps2uqq ymm8, oword [0x62c]
	vcvtps2uqq zmm8, yword [0x7a5]
	vcvtps2uqq zmm1, ymm15
