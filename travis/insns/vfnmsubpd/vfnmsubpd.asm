default rel
	vfnmsubpd xmm11, xmm2, xmm4, xmm5
	vfnmsubpd xmm10, xmm2, xmm9, xmm1
	vfnmsubpd ymm15, ymm2, yword [0xc11], ymm7
	vfnmsubpd ymm9, ymm3, yword [0x83e], ymm12
	vfnmsubpd xmm0, xmm6, xmm8, xmm4
	vfnmsubpd xmm10, xmm10, xmm9, xmm7
	vfnmsubpd ymm11, ymm11, ymm5, ymm12
	vfnmsubpd ymm1, ymm3, ymm6, ymm6
