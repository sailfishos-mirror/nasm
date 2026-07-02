default rel
	vfmaddps xmm12, xmm0, oword [0x204], xmm12
	vfmaddps xmm13, xmm1, xmm8, xmm7
	vfmaddps ymm0, ymm8, ymm2, ymm8
	vfmaddps ymm0, ymm12, yword [0x897], ymm1
	vfmaddps xmm7, xmm1, xmm14, oword [0x1b9]
	vfmaddps xmm11, xmm12, xmm13, xmm2
	vfmaddps ymm4, ymm4, ymm3, yword [0xfb7]
	vfmaddps ymm9, ymm8, ymm9, yword [0x34d]
