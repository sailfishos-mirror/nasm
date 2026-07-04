default rel
	vfmsubps xmm12, xmm6, xmm9, xmm8
	vfmsubps xmm12, xmm9, xmm8
	vfmsubps xmm13, xmm5, oword [0x8a5], xmm0
	vfmsubps ymm1, ymm2, ymm5, ymm1
	vfmsubps ymm1, ymm5, ymm1
	vfmsubps ymm0, ymm12, yword [0x217], ymm11
	vfmsubps xmm14, xmm5, xmm3, oword [0x176]
	vfmsubps xmm14, xmm3, oword [0x176]
	vfmsubps xmm13, xmm0, xmm12, xmm6
	vfmsubps ymm7, ymm2, ymm6, ymm6
	vfmsubps ymm7, ymm6, ymm6
	vfmsubps ymm7, ymm1, ymm9, ymm0
