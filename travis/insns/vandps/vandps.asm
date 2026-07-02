default rel
	vandps xmm6, xmm9, xmm4
	vandps xmm12, xmm7, oword [0xfbe]
	vandps ymm0, ymm8, ymm1
	vandps ymm12, ymm6, ymm7
	vandps xmm1, xmm11, xmm3
	vandps xmm9, xmm11, oword [0x897]
	vandps ymm8, ymm0, ymm3
	vandps ymm8, ymm12, ymm13
