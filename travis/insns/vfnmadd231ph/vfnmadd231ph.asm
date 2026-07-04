default rel
	vfnmadd231ph xmm13, xmm6, xmm5
	vfnmadd231ph xmm13, xmm5
	vfnmadd231ph xmm2, xmm13, xmm0
	vfnmadd231ph ymm10, ymm3, ymm0
	vfnmadd231ph ymm10, ymm0
	vfnmadd231ph ymm1, ymm2, ymm15
	vfnmadd231ph zmm9, zmm7, zword [0x58d]
	vfnmadd231ph zmm9, zword [0x58d]
	vfnmadd231ph zmm9, zmm12, zmm4
