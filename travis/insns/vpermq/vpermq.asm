default rel
	vpermq ymm9, ymm7, 0x6e
	vpermq ymm2, ymm15, 0x26
	vpermq ymm4, ymm14, 0xe7
	vpermq ymm10, yword [0x383], 0x4e
	vpermq zmm6, zmm14, 0x6b
	vpermq zmm2, zmm9, 0xee
	vpermq ymm6, ymm1, ymm3
	vpermq ymm6, ymm3
	vpermq ymm15, ymm5, yword [0xcf5]
