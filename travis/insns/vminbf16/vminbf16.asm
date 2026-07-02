default rel
	vminbf16 xmm2, xmm9, xmm15
	vminbf16 xmm1, xmm5, oword [0x542]
	vminbf16 ymm6, ymm8, ymm11
	vminbf16 ymm7, ymm13, ymm6
	vminbf16 zmm15, zmm11, zword [0x8a0]
	vminbf16 zmm1, zmm4, zmm13
