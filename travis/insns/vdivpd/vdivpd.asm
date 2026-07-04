default rel
	vdivpd xmm10, xmm8, oword [0xbec]
	vdivpd xmm10, oword [0xbec]
	vdivpd xmm12, xmm7, xmm14
	vdivpd ymm15, ymm4, ymm1
	vdivpd ymm15, ymm1
	vdivpd ymm12, ymm9, ymm14
	vdivpd xmm3, xmm5, xmm13
	vdivpd xmm3, xmm13
	vdivpd xmm7, xmm14, xmm13
	vdivpd ymm2, ymm0, ymm14
	vdivpd ymm2, ymm14
	vdivpd ymm0, ymm3, yword [0xd15]
