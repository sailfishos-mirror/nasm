default rel
	vpshrdvw xmm5, xmm4, oword [0xe13]
	vpshrdvw xmm7, xmm13, oword [0x5f4]
	vpshrdvw ymm0, ymm9, ymm11
	vpshrdvw ymm14, ymm15, ymm8
	vpshrdvw zmm10, zmm6, zmm14
	vpshrdvw zmm10, zmm14, zword [0x860]
