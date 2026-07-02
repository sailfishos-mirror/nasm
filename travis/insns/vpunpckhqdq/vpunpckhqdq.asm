default rel
	vpunpckhqdq xmm11, xmm15, xmm4
	vpunpckhqdq xmm0, xmm5, xmm1
	vpunpckhqdq ymm0, ymm7, ymm1
	vpunpckhqdq ymm4, ymm12, ymm13
	vpunpckhqdq xmm14, xmm6, xmm1
	vpunpckhqdq xmm13, xmm1, xmm7
	vpunpckhqdq ymm6, ymm4, yword [0x40b]
	vpunpckhqdq ymm1, ymm15, ymm9
