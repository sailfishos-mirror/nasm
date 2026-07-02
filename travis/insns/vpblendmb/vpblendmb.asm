default rel
	vpblendmb xmm9, xmm0, oword [0x7ff]
	vpblendmb xmm7, xmm6, xmm11
	vpblendmb ymm1, ymm13, ymm14
	vpblendmb ymm9, ymm12, ymm2
	vpblendmb zmm12, zmm12, zmm13
	vpblendmb zmm11, zmm9, zword [0x2ec]
