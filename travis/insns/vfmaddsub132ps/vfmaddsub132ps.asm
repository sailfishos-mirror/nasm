default rel
	vfmaddsub132ps xmm1, xmm0, xmm8
	vfmaddsub132ps xmm5, xmm13, xmm1
	vfmaddsub132ps ymm0, ymm1, ymm9
	vfmaddsub132ps ymm7, ymm11, ymm9
	vfmaddsub132ps xmm11, xmm14, oword [0x856]
	vfmaddsub132ps xmm14, xmm15, xmm9
	vfmaddsub132ps ymm9, ymm2, yword [0xf1b]
	vfmaddsub132ps ymm5, ymm3, ymm7
