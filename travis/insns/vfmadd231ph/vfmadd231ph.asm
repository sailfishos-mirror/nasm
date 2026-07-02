default rel
	vfmadd231ph xmm13, xmm14, oword [0xc7c]
	vfmadd231ph xmm13, xmm4, xmm12
	vfmadd231ph ymm1, ymm0, ymm11
	vfmadd231ph ymm10, ymm1, yword [0x40f]
	vfmadd231ph zmm6, zmm11, zword [0x65f]
	vfmadd231ph zmm1, zmm8, zmm4
