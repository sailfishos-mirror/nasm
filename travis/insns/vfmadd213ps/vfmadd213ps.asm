default rel
	vfmadd213ps xmm4, xmm12, oword [0x7c0]
	vfmadd213ps xmm2, xmm4, xmm9
	vfmadd213ps ymm9, ymm5, ymm12
	vfmadd213ps ymm6, ymm5, ymm10
	vfmadd213ps xmm9, xmm6, oword [0xa02]
	vfmadd213ps xmm15, xmm2, xmm15
	vfmadd213ps ymm0, ymm15, ymm8
	vfmadd213ps ymm4, ymm13, ymm10
