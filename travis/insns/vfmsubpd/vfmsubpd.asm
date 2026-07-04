default rel
	vfmsubpd xmm9, xmm10, xmm0, xmm3
	vfmsubpd xmm9, xmm0, xmm3
	vfmsubpd xmm9, xmm2, oword [0x221], xmm4
	vfmsubpd ymm3, ymm13, ymm13, ymm0
	vfmsubpd ymm3, ymm13, ymm0
	vfmsubpd ymm12, ymm9, yword [0x58f], ymm15
	vfmsubpd xmm1, xmm10, xmm15, oword [0xcb3]
	vfmsubpd xmm1, xmm15, oword [0xcb3]
	vfmsubpd xmm12, xmm1, xmm3, xmm6
	vfmsubpd ymm9, ymm9, ymm15, yword [0x799]
	vfmsubpd ymm9, ymm15, yword [0x799]
	vfmsubpd ymm1, ymm15, ymm8, ymm12
