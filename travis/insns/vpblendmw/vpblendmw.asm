default rel
	vpblendmw xmm1, xmm13, xmm0
	vpblendmw xmm5, xmm1, oword [0xfc6]
	vpblendmw ymm8, ymm5, ymm1
	vpblendmw ymm3, ymm15, ymm5
	vpblendmw zmm13, zmm14, zmm14
	vpblendmw zmm8, zmm8, zmm10
