default rel
	vpermi2q xmm4, xmm11, xmm4
	vpermi2q xmm3, xmm13, xmm14
	vpermi2q ymm9, ymm10, yword [0xdb8]
	vpermi2q ymm15, ymm4, yword [0xb03]
	vpermi2q zmm4, zmm10, zword [0xeb1]
	vpermi2q zmm12, zmm14, zword [0xaaa]
