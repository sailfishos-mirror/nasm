default rel
	vfmsubadd213ph xmm9, xmm15, xmm9
	vfmsubadd213ph xmm9, xmm9
	vfmsubadd213ph xmm5, xmm4, xmm3
	vfmsubadd213ph ymm7, ymm13, ymm0
	vfmsubadd213ph ymm7, ymm0
	vfmsubadd213ph ymm7, ymm6, yword [0x273]
	vfmsubadd213ph zmm11, zmm0, zmm7
	vfmsubadd213ph zmm11, zmm7
	vfmsubadd213ph zmm13, zmm8, zword [0xab2]
