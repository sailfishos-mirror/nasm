default rel
	vfnmadd123pd xmm1, xmm5, oword [0x5a1]
	vfnmadd123pd xmm4, xmm1, oword [0xba8]
	vfnmadd123pd ymm4, ymm5, ymm14
	vfnmadd123pd ymm0, ymm0, ymm5
