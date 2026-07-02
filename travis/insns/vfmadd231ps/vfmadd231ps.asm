default rel
	vfmadd231ps xmm10, xmm14, xmm0
	vfmadd231ps xmm5, xmm6, xmm10
	vfmadd231ps ymm15, ymm15, ymm8
	vfmadd231ps ymm7, ymm1, ymm13
	vfmadd231ps xmm15, xmm4, oword [0xdfd]
	vfmadd231ps xmm15, xmm13, xmm0
	vfmadd231ps ymm5, ymm11, ymm10
	vfmadd231ps ymm4, ymm10, ymm8
