default rel
	vmulpd xmm7, xmm7, xmm13
	vmulpd xmm7, xmm13
	vmulpd xmm5, xmm12, xmm9
	vmulpd ymm2, ymm10, ymm6
	vmulpd ymm2, ymm6
	vmulpd ymm5, ymm3, ymm14
	vmulpd xmm12, xmm8, xmm3
	vmulpd xmm12, xmm3
	vmulpd xmm12, xmm7, xmm7
	vmulpd ymm3, ymm13, ymm2
	vmulpd ymm3, ymm2
	vmulpd ymm10, ymm15, yword [0xf73]
