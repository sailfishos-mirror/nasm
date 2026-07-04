default rel
	vunpckhpd xmm12, xmm3, xmm13
	vunpckhpd xmm12, xmm13
	vunpckhpd xmm11, xmm15, xmm14
	vunpckhpd ymm8, ymm14, yword [0xe9c]
	vunpckhpd ymm8, yword [0xe9c]
	vunpckhpd ymm3, ymm10, ymm8
	vunpckhpd xmm11, xmm2, xmm12
	vunpckhpd xmm11, xmm12
	vunpckhpd xmm15, xmm11, xmm4
	vunpckhpd ymm5, ymm11, ymm2
	vunpckhpd ymm5, ymm2
	vunpckhpd ymm10, ymm4, ymm2
