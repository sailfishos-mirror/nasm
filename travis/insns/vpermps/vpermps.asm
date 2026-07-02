default rel
	vpermps ymm7, ymm9, yword [0x6af]
	vpermps ymm5, ymm6, ymm4
	vpermps ymm7, ymm4, yword [0xe4d]
	vpermps ymm4, ymm8, yword [0x346]
	vpermps zmm13, zmm5, zmm1
	vpermps zmm8, zmm4, zmm13
