default rel
	vfmadd132pd xmm4, xmm8, xmm6
	vfmadd132pd xmm14, xmm9, xmm14
	vfmadd132pd ymm6, ymm3, ymm3
	vfmadd132pd ymm10, ymm14, yword [0xeed]
	vfmadd132pd xmm15, xmm8, xmm10
	vfmadd132pd xmm13, xmm4, xmm7
	vfmadd132pd ymm9, ymm3, ymm6
	vfmadd132pd ymm14, ymm1, yword [0xfb6]
