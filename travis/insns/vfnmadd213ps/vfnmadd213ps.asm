default rel
	vfnmadd213ps xmm1, xmm4, xmm14
	vfnmadd213ps xmm10, xmm1, xmm10
	vfnmadd213ps ymm0, ymm7, ymm5
	vfnmadd213ps ymm12, ymm5, yword [0xd3d]
	vfnmadd213ps xmm12, xmm13, xmm9
	vfnmadd213ps xmm6, xmm13, xmm9
	vfnmadd213ps ymm4, ymm5, yword [0x5b6]
	vfnmadd213ps ymm1, ymm2, ymm7
