default rel
	vpermt2d xmm15, xmm4, xmm12
	vpermt2d xmm1, xmm4, xmm12
	vpermt2d ymm9, ymm8, ymm8
	vpermt2d ymm3, ymm15, yword [0xff1]
	vpermt2d zmm8, zmm11, zmm11
	vpermt2d zmm1, zmm1, zmm0
