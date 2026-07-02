default rel
	vfmadd231sd xmm11, xmm5, xmm8
	vfmadd231sd xmm6, xmm3, xmm6
	vfmadd231sd xmm0, xmm8, qword [0xc0a]
	vfmadd231sd xmm10, xmm14, xmm7
