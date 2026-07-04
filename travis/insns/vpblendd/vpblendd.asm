default rel
	vpblendd xmm12, xmm13, oword [0xd08], 0x41
	vpblendd xmm12, oword [0xd08], 0x41
	vpblendd xmm10, xmm4, oword [0xd02], 0xb7
	vpblendd ymm8, ymm8, ymm0, 0x21
	vpblendd ymm8, ymm0, 0x21
	vpblendd ymm15, ymm1, ymm7, 0x4d
