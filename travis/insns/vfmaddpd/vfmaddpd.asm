default rel
	vfmaddpd xmm13, xmm0, oword [0x3e7], xmm9
	vfmaddpd xmm13, oword [0x3e7], xmm9
	vfmaddpd xmm9, xmm15, oword [0xa5d], xmm14
	vfmaddpd ymm14, ymm11, ymm2, ymm3
	vfmaddpd ymm14, ymm2, ymm3
	vfmaddpd ymm4, ymm13, ymm6, ymm15
	vfmaddpd xmm14, xmm4, xmm8, xmm13
	vfmaddpd xmm14, xmm8, xmm13
	vfmaddpd xmm1, xmm9, xmm15, xmm10
	vfmaddpd ymm11, ymm12, ymm15, ymm11
	vfmaddpd ymm11, ymm15, ymm11
	vfmaddpd ymm5, ymm15, ymm14, yword [0xd3c]
