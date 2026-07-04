default rel
	vcmpps xmm0, xmm2, xmm2, 0x9b
	vcmpps xmm0, xmm2, 0x9b
	vcmpps xmm8, xmm8, oword [0xfa7], 0xf5
	vcmpps ymm4, ymm15, yword [0x550], 0x3c
	vcmpps ymm4, yword [0x550], 0x3c
	vcmpps ymm1, ymm15, yword [0x89c], 0xaf
	vcmpps k4, xmm11, oword [0x212], 0x81
	vcmpps k1, xmm4, oword [0xf45], 0x11
	vcmpps k6, ymm15, ymm10, 0xc
	vcmpps k2, ymm5, ymm4, 0xfc
