default rel
	vsubps xmm1, xmm7, xmm14
	vsubps xmm1, xmm14
	vsubps xmm5, xmm10, xmm8
	vsubps ymm3, ymm11, ymm10
	vsubps ymm3, ymm10
	vsubps ymm4, ymm8, ymm13
	vsubps xmm2, xmm5, oword [0xa1a]
	vsubps xmm2, oword [0xa1a]
	vsubps xmm14, xmm1, xmm6
	vsubps ymm13, ymm12, yword [0xfee]
	vsubps ymm13, yword [0xfee]
	vsubps ymm4, ymm11, ymm0
