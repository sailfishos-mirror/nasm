default rel
	vpermt2w xmm14, xmm12, xmm8
	vpermt2w xmm13, xmm6, oword [0x3fb]
	vpermt2w ymm1, ymm10, ymm13
	vpermt2w ymm10, ymm0, yword [0x933]
	vpermt2w zmm13, zmm8, zword [0x106]
	vpermt2w zmm11, zmm13, zword [0x16b]
