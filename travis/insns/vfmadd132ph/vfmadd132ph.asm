default rel
	vfmadd132ph xmm9, xmm11, xmm10
	vfmadd132ph xmm8, xmm7, xmm9
	vfmadd132ph ymm13, ymm2, yword [0x6dc]
	vfmadd132ph ymm15, ymm1, ymm15
	vfmadd132ph zmm12, zmm15, zmm5
	vfmadd132ph zmm14, zmm3, zmm14
