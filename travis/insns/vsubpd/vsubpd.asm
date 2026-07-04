default rel
	vsubpd xmm0, xmm4, oword [0x89d]
	vsubpd xmm0, oword [0x89d]
	vsubpd xmm4, xmm9, xmm8
	vsubpd ymm14, ymm14, ymm10
	vsubpd ymm14, ymm10
	vsubpd ymm7, ymm7, ymm14
	vsubpd xmm7, xmm7, xmm6
	vsubpd xmm7, xmm6
	vsubpd xmm13, xmm0, xmm5
	vsubpd ymm7, ymm13, yword [0xa51]
	vsubpd ymm7, yword [0xa51]
	vsubpd ymm0, ymm7, ymm2
