default rel
	vminmaxbf16 xmm1, xmm6, xmm5, 0xa6
	vminmaxbf16 xmm9, xmm3, xmm8, 0x8f
	vminmaxbf16 ymm14, ymm4, ymm7, 0x4f
	vminmaxbf16 ymm6, ymm13, ymm2, 0x3b
	vminmaxbf16 zmm13, zmm3, zword [0x2f7], 0x4d
	vminmaxbf16 zmm15, zmm5, zmm13, 0xc8
