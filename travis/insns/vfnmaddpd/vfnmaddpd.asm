default rel
	vfnmaddpd xmm10, xmm14, xmm12, xmm7
	vfnmaddpd xmm10, xmm12, xmm7
	vfnmaddpd xmm6, xmm7, oword [0xef9], xmm0
	vfnmaddpd ymm10, ymm1, ymm4, ymm8
	vfnmaddpd ymm10, ymm4, ymm8
	vfnmaddpd ymm3, ymm9, yword [0xe4c], ymm13
	vfnmaddpd xmm11, xmm8, xmm15, xmm2
	vfnmaddpd xmm11, xmm15, xmm2
	vfnmaddpd xmm1, xmm2, xmm10, oword [0xd8b]
	vfnmaddpd ymm14, ymm15, ymm10, ymm4
	vfnmaddpd ymm14, ymm10, ymm4
	vfnmaddpd ymm0, ymm8, ymm1, yword [0x6e5]
