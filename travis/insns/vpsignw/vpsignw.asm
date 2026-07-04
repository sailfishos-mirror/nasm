default rel
	vpsignw xmm12, xmm12, xmm4
	vpsignw xmm12, xmm4
	vpsignw xmm5, xmm5, xmm14
	vpsignw ymm0, ymm5, ymm15
	vpsignw ymm0, ymm15
	vpsignw ymm6, ymm3, yword [0x8a4]
