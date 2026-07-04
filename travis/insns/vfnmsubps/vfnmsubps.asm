default rel
	vfnmsubps xmm1, xmm2, xmm5, xmm15
	vfnmsubps xmm1, xmm5, xmm15
	vfnmsubps xmm15, xmm14, oword [0xd4b], xmm6
	vfnmsubps ymm5, ymm7, ymm8, ymm0
	vfnmsubps ymm5, ymm8, ymm0
	vfnmsubps ymm4, ymm1, ymm10, ymm10
	vfnmsubps xmm15, xmm3, xmm5, xmm8
	vfnmsubps xmm15, xmm5, xmm8
	vfnmsubps xmm6, xmm5, xmm13, oword [0x899]
	vfnmsubps ymm15, ymm2, ymm5, ymm7
	vfnmsubps ymm15, ymm5, ymm7
	vfnmsubps ymm9, ymm10, ymm3, ymm8
