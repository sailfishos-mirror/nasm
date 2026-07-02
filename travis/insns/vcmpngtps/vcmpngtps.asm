default rel
	vcmpngtps xmm7, xmm0, xmm15
	vcmpngtps xmm3, xmm3, xmm10
	vcmpngtps ymm0, ymm5, ymm14
	vcmpngtps ymm14, ymm2, yword [0x1bc]
	vcmpngtps k5, xmm6, xmm1
	vcmpngtps k5, xmm0, xmm5
	vcmpngtps k7, ymm4, ymm8
	vcmpngtps k5, ymm6, ymm4
