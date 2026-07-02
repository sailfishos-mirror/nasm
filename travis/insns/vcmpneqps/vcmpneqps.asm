default rel
	vcmpneqps xmm10, xmm3, xmm6
	vcmpneqps xmm9, xmm14, xmm14
	vcmpneqps ymm3, ymm2, ymm1
	vcmpneqps ymm4, ymm11, ymm6
	vcmpneqps k4, xmm1, oword [0x647]
	vcmpneqps k5, xmm4, xmm1
	vcmpneqps k1, ymm8, yword [0xeac]
	vcmpneqps k4, ymm0, ymm11
