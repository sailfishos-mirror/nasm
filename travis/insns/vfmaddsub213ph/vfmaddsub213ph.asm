default rel
	vfmaddsub213ph xmm7, xmm4, oword [0xcb1]
	vfmaddsub213ph xmm7, oword [0xcb1]
	vfmaddsub213ph xmm10, xmm8, oword [0x6fd]
	vfmaddsub213ph ymm9, ymm12, ymm7
	vfmaddsub213ph ymm9, ymm7
	vfmaddsub213ph ymm5, ymm3, yword [0x36b]
	vfmaddsub213ph zmm6, zmm11, zmm14
	vfmaddsub213ph zmm6, zmm14
	vfmaddsub213ph zmm13, zmm7, zword [0x2bf]
