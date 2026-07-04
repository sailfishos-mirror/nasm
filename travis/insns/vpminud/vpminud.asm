default rel
	vpminud xmm0, xmm1, xmm2
	vpminud xmm0, xmm2
	vpminud xmm3, xmm4, xmm6
	vpminud ymm15, ymm7, yword [0x34d]
	vpminud ymm15, yword [0x34d]
	vpminud ymm6, ymm6, ymm9
	vpminud xmm4, xmm6, xmm9
	vpminud xmm4, xmm9
	vpminud xmm8, xmm10, xmm15
	vpminud ymm2, ymm15, ymm8
	vpminud ymm2, ymm8
	vpminud ymm1, ymm10, yword [0x7d7]
