default rel
	vpshldvw xmm13, xmm12, oword [0xc56]
	vpshldvw xmm13, oword [0xc56]
	vpshldvw xmm7, xmm12, oword [0x2c4]
	vpshldvw ymm9, ymm13, ymm13
	vpshldvw ymm9, ymm13
	vpshldvw ymm12, ymm13, ymm4
	vpshldvw zmm3, zmm14, zword [0xb4e]
	vpshldvw zmm3, zword [0xb4e]
	vpshldvw zmm3, zmm2, zmm11
