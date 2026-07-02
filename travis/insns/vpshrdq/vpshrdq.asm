default rel
	vpshrdq xmm9, xmm1, xmm8, 0xf6
	vpshrdq xmm14, xmm7, xmm4, 0xd2
	vpshrdq ymm7, ymm7, yword [0x756], 0x82
	vpshrdq ymm5, ymm14, ymm1, 0x2a
	vpshrdq zmm5, zmm5, zmm9, 0x28
	vpshrdq zmm1, zmm13, zmm11, 0x7b
