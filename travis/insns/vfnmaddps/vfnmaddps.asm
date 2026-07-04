default rel
	vfnmaddps xmm2, xmm11, oword [0xcae], xmm6
	vfnmaddps xmm2, oword [0xcae], xmm6
	vfnmaddps xmm3, xmm3, xmm5, xmm15
	vfnmaddps ymm2, ymm11, yword [0x8aa], ymm11
	vfnmaddps ymm2, yword [0x8aa], ymm11
	vfnmaddps ymm9, ymm7, yword [0x402], ymm5
	vfnmaddps xmm14, xmm8, xmm5, xmm4
	vfnmaddps xmm14, xmm5, xmm4
	vfnmaddps xmm3, xmm8, xmm1, xmm6
	vfnmaddps ymm14, ymm1, ymm7, ymm11
	vfnmaddps ymm14, ymm7, ymm11
	vfnmaddps ymm3, ymm2, ymm0, yword [0x5b0]
