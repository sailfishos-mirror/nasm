default rel
	vpclmullqlqdq xmm14, xmm7, xmm3
	vpclmullqlqdq xmm3, xmm7, xmm5
	vpclmullqlqdq ymm9, ymm13, yword [0x60a]
	vpclmullqlqdq ymm9, ymm7, yword [0x3cc]
	vpclmullqlqdq zmm7, zmm7, zword [0xc29]
	vpclmullqlqdq zmm6, zmm10, zword [0xf06]
