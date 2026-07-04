default rel
	vfmsubaddpd xmm9, xmm0, xmm5, xmm10
	vfmsubaddpd xmm9, xmm5, xmm10
	vfmsubaddpd xmm5, xmm13, xmm15, xmm14
	vfmsubaddpd ymm6, ymm5, ymm14, ymm9
	vfmsubaddpd ymm6, ymm14, ymm9
	vfmsubaddpd ymm3, ymm12, ymm9, ymm3
	vfmsubaddpd xmm10, xmm6, xmm9, xmm8
	vfmsubaddpd xmm10, xmm9, xmm8
	vfmsubaddpd xmm14, xmm6, xmm9, xmm8
	vfmsubaddpd ymm1, ymm1, ymm6, ymm2
	vfmsubaddpd ymm1, ymm6, ymm2
	vfmsubaddpd ymm10, ymm7, ymm15, yword [0xba3]
