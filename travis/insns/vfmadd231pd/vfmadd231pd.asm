default rel
	vfmadd231pd xmm10, xmm15, xmm12
	vfmadd231pd xmm4, xmm15, oword [0x19f]
	vfmadd231pd ymm15, ymm9, ymm7
	vfmadd231pd ymm7, ymm15, yword [0xf80]
	vfmadd231pd xmm9, xmm5, oword [0x103]
	vfmadd231pd xmm13, xmm0, oword [0x8b9]
	vfmadd231pd ymm5, ymm9, ymm5
	vfmadd231pd ymm1, ymm6, ymm15
