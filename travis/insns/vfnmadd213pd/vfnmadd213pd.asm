default rel
	vfnmadd213pd xmm3, xmm14, xmm3
	vfnmadd213pd xmm3, xmm1, xmm7
	vfnmadd213pd ymm5, ymm0, ymm2
	vfnmadd213pd ymm14, ymm12, ymm0
	vfnmadd213pd xmm8, xmm7, oword [0xed3]
	vfnmadd213pd xmm9, xmm3, oword [0x5bd]
	vfnmadd213pd ymm14, ymm13, ymm6
	vfnmadd213pd ymm1, ymm2, ymm11
