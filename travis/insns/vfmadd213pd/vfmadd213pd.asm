default rel
	vfmadd213pd xmm12, xmm0, xmm6
	vfmadd213pd xmm1, xmm8, xmm0
	vfmadd213pd ymm3, ymm13, yword [0x40f]
	vfmadd213pd ymm3, ymm10, yword [0xe18]
	vfmadd213pd xmm15, xmm13, oword [0x566]
	vfmadd213pd xmm6, xmm11, xmm9
	vfmadd213pd ymm2, ymm9, ymm14
	vfmadd213pd ymm3, ymm8, yword [0x6f8]
