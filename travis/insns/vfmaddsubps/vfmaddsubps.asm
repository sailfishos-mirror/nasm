default rel
	vfmaddsubps xmm0, xmm1, xmm11, xmm10
	vfmaddsubps xmm0, xmm11, xmm10
	vfmaddsubps xmm4, xmm3, xmm9, xmm1
	vfmaddsubps ymm4, ymm2, ymm2, ymm1
	vfmaddsubps ymm4, ymm2, ymm1
	vfmaddsubps ymm8, ymm0, ymm3, ymm13
	vfmaddsubps xmm12, xmm12, xmm14, oword [0x1a3]
	vfmaddsubps xmm12, xmm14, oword [0x1a3]
	vfmaddsubps xmm0, xmm1, xmm10, xmm9
	vfmaddsubps ymm7, ymm7, ymm13, ymm4
	vfmaddsubps ymm7, ymm13, ymm4
	vfmaddsubps ymm8, ymm15, ymm6, ymm11
