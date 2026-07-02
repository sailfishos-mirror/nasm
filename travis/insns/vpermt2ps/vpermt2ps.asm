default rel
	vpermt2ps xmm5, xmm10, xmm12
	vpermt2ps xmm4, xmm7, xmm6
	vpermt2ps ymm11, ymm14, yword [0xe10]
	vpermt2ps ymm1, ymm4, ymm6
	vpermt2ps zmm6, zmm1, zmm3
	vpermt2ps zmm8, zmm12, zword [0x785]
