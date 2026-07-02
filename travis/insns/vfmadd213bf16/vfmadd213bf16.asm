default rel
	vfmadd213bf16 xmm9, xmm12, oword [0x1c3]
	vfmadd213bf16 xmm3, xmm13, oword [0x8c1]
	vfmadd213bf16 ymm7, ymm8, ymm3
	vfmadd213bf16 ymm14, ymm2, ymm10
	vfmadd213bf16 zmm6, zmm10, zmm8
	vfmadd213bf16 zmm1, zmm12, zmm9
