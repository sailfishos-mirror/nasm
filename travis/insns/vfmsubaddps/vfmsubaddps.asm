default rel
	vfmsubaddps xmm6, xmm1, xmm4, xmm3
	vfmsubaddps xmm0, xmm9, xmm15, xmm13
	vfmsubaddps ymm0, ymm3, ymm6, ymm11
	vfmsubaddps ymm8, ymm6, yword [0x8dc], ymm14
	vfmsubaddps xmm2, xmm15, xmm7, xmm11
	vfmsubaddps xmm5, xmm4, xmm10, xmm13
	vfmsubaddps ymm9, ymm13, ymm1, ymm4
	vfmsubaddps ymm1, ymm14, ymm2, ymm5
