default rel
	vshuff32x4 ymm7, ymm12, ymm0, 0xa9
	vshuff32x4 ymm7, ymm0, 0xa9
	vshuff32x4 ymm3, ymm3, ymm14, 0x4f
	vshuff32x4 zmm11, zmm2, zmm11, 0x91
	vshuff32x4 zmm11, zmm11, 0x91
	vshuff32x4 zmm0, zmm3, zword [0x3b4], 0xed
