default rel
	vpclmulhqhqdq xmm4, xmm1, xmm12
	vpclmulhqhqdq xmm10, xmm13, oword [0x9cd]
	vpclmulhqhqdq ymm14, ymm3, ymm1
	vpclmulhqhqdq ymm11, ymm15, yword [0xe2a]
	vpclmulhqhqdq zmm13, zmm1, zword [0x79c]
	vpclmulhqhqdq zmm9, zmm14, zmm11
