default rel
	vbmacxor16x16x16 ymm13, ymm7, yword [0xeb6]
	vbmacxor16x16x16 ymm11, ymm4, ymm8
	vbmacxor16x16x16 zmm1, zmm4, zmm2
	vbmacxor16x16x16 zmm13, zmm11, zmm2
