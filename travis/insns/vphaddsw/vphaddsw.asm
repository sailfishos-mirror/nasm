default rel
	vphaddsw xmm15, xmm5, xmm8
	vphaddsw xmm15, xmm8
	vphaddsw xmm10, xmm9, xmm12
	vphaddsw ymm12, ymm15, yword [0x781]
	vphaddsw ymm12, yword [0x781]
	vphaddsw ymm0, ymm12, ymm0
