default rel
	vfmaddsub213ps xmm6, xmm2, oword [0xf24]
	vfmaddsub213ps xmm10, xmm0, xmm6
	vfmaddsub213ps ymm14, ymm1, yword [0xeca]
	vfmaddsub213ps ymm2, ymm15, yword [0x3a8]
	vfmaddsub213ps xmm13, xmm8, xmm9
	vfmaddsub213ps xmm11, xmm10, oword [0xbc3]
	vfmaddsub213ps ymm3, ymm8, ymm10
	vfmaddsub213ps ymm2, ymm2, ymm10
