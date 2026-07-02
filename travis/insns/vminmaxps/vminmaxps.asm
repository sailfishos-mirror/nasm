default rel
	vminmaxps xmm9, xmm15, xmm8, 0x40
	vminmaxps xmm11, xmm15, xmm8, 0x98
	vminmaxps ymm2, ymm9, ymm4, 0xd5
	vminmaxps ymm15, ymm8, ymm9, 0x66
	vminmaxps zmm6, zmm12, zword [0x307], 0x58
	vminmaxps zmm12, zmm3, zword [0x6dd], 0xa3
