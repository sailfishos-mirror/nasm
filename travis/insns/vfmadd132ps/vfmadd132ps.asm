default rel
	vfmadd132ps xmm3, xmm8, xmm6
	vfmadd132ps xmm0, xmm4, xmm9
	vfmadd132ps ymm1, ymm11, yword [0x5fb]
	vfmadd132ps ymm12, ymm10, ymm10
	vfmadd132ps xmm4, xmm9, oword [0xa3a]
	vfmadd132ps xmm10, xmm9, xmm3
	vfmadd132ps ymm1, ymm15, ymm10
	vfmadd132ps ymm6, ymm10, ymm15
