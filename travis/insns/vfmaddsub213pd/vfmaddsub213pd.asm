default rel
	vfmaddsub213pd xmm8, xmm8, xmm8
	vfmaddsub213pd xmm5, xmm6, oword [0xfae]
	vfmaddsub213pd ymm11, ymm3, ymm8
	vfmaddsub213pd ymm7, ymm4, ymm10
	vfmaddsub213pd xmm5, xmm2, xmm9
	vfmaddsub213pd xmm3, xmm1, xmm5
	vfmaddsub213pd ymm1, ymm14, yword [0x2e2]
	vfmaddsub213pd ymm5, ymm1, yword [0xbbc]
