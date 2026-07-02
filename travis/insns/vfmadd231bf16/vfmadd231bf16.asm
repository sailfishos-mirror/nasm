default rel
	vfmadd231bf16 xmm13, xmm8, xmm5
	vfmadd231bf16 xmm5, xmm15, xmm14
	vfmadd231bf16 ymm6, ymm15, ymm13
	vfmadd231bf16 ymm5, ymm13, ymm8
	vfmadd231bf16 zmm9, zmm11, zmm1
	vfmadd231bf16 zmm0, zmm15, zmm11
