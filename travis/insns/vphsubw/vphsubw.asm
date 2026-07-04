default rel
	vphsubw xmm3, xmm9, xmm15
	vphsubw xmm3, xmm15
	vphsubw xmm0, xmm15, oword [0x1f0]
	vphsubw ymm4, ymm8, ymm5
	vphsubw ymm4, ymm5
	vphsubw ymm10, ymm5, ymm1
