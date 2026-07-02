default rel
	vpermt2b xmm10, xmm5, xmm10
	vpermt2b xmm5, xmm11, xmm11
	vpermt2b ymm2, ymm1, ymm6
	vpermt2b ymm0, ymm13, ymm13
	vpermt2b zmm0, zmm2, zmm0
	vpermt2b zmm8, zmm2, zword [0x532]
