default rel
	vpsubw xmm10, xmm5, xmm15
	vpsubw xmm10, xmm15
	vpsubw xmm15, xmm7, oword [0xc4c]
	vpsubw ymm14, ymm11, ymm11
	vpsubw ymm14, ymm11
	vpsubw ymm11, ymm11, ymm9
	vpsubw xmm12, xmm7, oword [0x397]
	vpsubw xmm12, oword [0x397]
	vpsubw xmm15, xmm15, xmm9
	vpsubw ymm3, ymm10, ymm8
	vpsubw ymm3, ymm8
	vpsubw ymm7, ymm3, ymm13
