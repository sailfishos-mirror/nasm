default rel
	vpavgw xmm15, xmm14, oword [0xf85]
	vpavgw xmm15, oword [0xf85]
	vpavgw xmm15, xmm3, xmm9
	vpavgw ymm12, ymm15, yword [0xb7d]
	vpavgw ymm12, yword [0xb7d]
	vpavgw ymm9, ymm14, yword [0x27e]
	vpavgw xmm7, xmm8, xmm8
	vpavgw xmm7, xmm8
	vpavgw xmm12, xmm7, xmm6
	vpavgw ymm10, ymm10, ymm8
	vpavgw ymm10, ymm8
	vpavgw ymm7, ymm12, ymm0
