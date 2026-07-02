default rel
	vpermilps xmm6, xmm8, oword [0xba1]
	vpermilps xmm11, xmm11, xmm7
	vpermilps ymm11, ymm9, ymm7
	vpermilps ymm15, ymm2, ymm3
	vpermilps xmm13, xmm13, 0x46
	vpermilps xmm6, xmm14, 0xce
	vpermilps ymm3, ymm4, 0xd1
	vpermilps ymm10, ymm8, 0xbd
