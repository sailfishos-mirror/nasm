default rel
	vpunpckhwd xmm6, xmm1, xmm12
	vpunpckhwd xmm6, xmm12
	vpunpckhwd xmm8, xmm2, oword [0x7c9]
	vpunpckhwd ymm12, ymm11, ymm5
	vpunpckhwd ymm12, ymm5
	vpunpckhwd ymm15, ymm3, ymm12
	vpunpckhwd xmm0, xmm11, oword [0x32f]
	vpunpckhwd xmm0, oword [0x32f]
	vpunpckhwd xmm6, xmm15, oword [0xc79]
	vpunpckhwd ymm2, ymm12, ymm7
	vpunpckhwd ymm2, ymm7
	vpunpckhwd ymm7, ymm11, yword [0xc7d]
