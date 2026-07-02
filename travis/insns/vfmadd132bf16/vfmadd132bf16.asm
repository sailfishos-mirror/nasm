default rel
	vfmadd132bf16 xmm3, xmm10, xmm11
	vfmadd132bf16 xmm8, xmm9, xmm11
	vfmadd132bf16 ymm6, ymm2, ymm12
	vfmadd132bf16 ymm4, ymm7, yword [0xf28]
	vfmadd132bf16 zmm13, zmm10, zword [0x8c0]
	vfmadd132bf16 zmm1, zmm1, zword [0x42f]
