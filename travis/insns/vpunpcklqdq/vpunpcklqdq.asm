default rel
	vpunpcklqdq xmm1, xmm0, xmm12
	vpunpcklqdq xmm1, xmm12
	vpunpcklqdq xmm9, xmm5, xmm6
	vpunpcklqdq ymm15, ymm4, yword [0xe4d]
	vpunpcklqdq ymm15, yword [0xe4d]
	vpunpcklqdq ymm10, ymm14, yword [0x9dc]
	vpunpcklqdq xmm8, xmm9, oword [0x735]
	vpunpcklqdq xmm8, oword [0x735]
	vpunpcklqdq xmm2, xmm8, xmm8
	vpunpcklqdq ymm10, ymm13, ymm2
	vpunpcklqdq ymm10, ymm2
	vpunpcklqdq ymm14, ymm14, ymm5
