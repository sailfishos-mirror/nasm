default rel
	vpmuludq xmm3, xmm6, xmm7
	vpmuludq xmm3, xmm7
	vpmuludq xmm4, xmm12, xmm1
	vpmuludq ymm3, ymm3, yword [0x7dc]
	vpmuludq ymm3, yword [0x7dc]
	vpmuludq ymm5, ymm9, yword [0x5ea]
	vpmuludq xmm14, xmm3, oword [0x905]
	vpmuludq xmm14, oword [0x905]
	vpmuludq xmm10, xmm9, xmm5
	vpmuludq ymm5, ymm3, ymm6
	vpmuludq ymm5, ymm6
	vpmuludq ymm1, ymm0, ymm11
