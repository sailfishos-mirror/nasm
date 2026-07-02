default rel
	vpermi2b xmm13, xmm6, oword [0x29f]
	vpermi2b xmm12, xmm13, xmm7
	vpermi2b ymm1, ymm14, yword [0x366]
	vpermi2b ymm6, ymm15, yword [0x5e8]
	vpermi2b zmm10, zmm1, zword [0x83c]
	vpermi2b zmm2, zmm6, zmm7
