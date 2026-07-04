default rel
	vaddps xmm6, xmm2, xmm8
	vaddps xmm6, xmm8
	vaddps xmm13, xmm1, xmm2
	vaddps ymm4, ymm1, ymm9
	vaddps ymm4, ymm9
	vaddps ymm15, ymm9, ymm10
	vaddps xmm7, xmm6, oword [0x371]
	vaddps xmm7, oword [0x371]
	vaddps xmm0, xmm7, oword [0xf72]
	vaddps ymm14, ymm15, ymm13
	vaddps ymm14, ymm13
	vaddps ymm12, ymm1, yword [0xa06]
