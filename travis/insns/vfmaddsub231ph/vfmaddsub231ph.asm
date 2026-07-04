default rel
	vfmaddsub231ph xmm6, xmm12, xmm8
	vfmaddsub231ph xmm6, xmm8
	vfmaddsub231ph xmm13, xmm8, xmm6
	vfmaddsub231ph ymm10, ymm5, yword [0xde7]
	vfmaddsub231ph ymm10, yword [0xde7]
	vfmaddsub231ph ymm15, ymm3, ymm14
	vfmaddsub231ph zmm8, zmm2, zmm7
	vfmaddsub231ph zmm8, zmm7
	vfmaddsub231ph zmm8, zmm8, zword [0x984]
