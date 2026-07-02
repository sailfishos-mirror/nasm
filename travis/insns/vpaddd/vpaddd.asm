default rel
	vpaddd xmm14, xmm7, xmm1
	vpaddd xmm14, xmm13, xmm15
	vpaddd ymm7, ymm0, ymm11
	vpaddd ymm1, ymm12, yword [0xbf5]
	vpaddd xmm14, xmm8, xmm2
	vpaddd xmm8, xmm15, oword [0xe61]
	vpaddd ymm9, ymm4, yword [0x41a]
	vpaddd ymm10, ymm6, ymm2
