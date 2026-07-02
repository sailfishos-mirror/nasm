default rel
	vfmadd123pd xmm15, xmm2, xmm3
	vfmadd123pd xmm15, xmm0, oword [0x7bf]
	vfmadd123pd ymm1, ymm13, ymm15
	vfmadd123pd ymm4, ymm8, yword [0xfaa]
