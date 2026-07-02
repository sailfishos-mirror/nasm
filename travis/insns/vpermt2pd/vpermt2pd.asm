default rel
	vpermt2pd xmm1, xmm4, oword [0xc75]
	vpermt2pd xmm14, xmm5, xmm12
	vpermt2pd ymm2, ymm11, ymm0
	vpermt2pd ymm7, ymm0, ymm10
	vpermt2pd zmm0, zmm4, zmm11
	vpermt2pd zmm11, zmm0, zword [0xb02]
