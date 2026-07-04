default rel
	vpermilpd xmm4, xmm13, xmm14
	vpermilpd xmm4, xmm14
	vpermilpd xmm4, xmm5, oword [0xecb]
	vpermilpd ymm13, ymm5, ymm13
	vpermilpd ymm13, ymm13
	vpermilpd ymm0, ymm15, ymm15
	vpermilpd xmm3, oword [0x49a], 0xa4
	vpermilpd xmm5, xmm3, 0x2c
	vpermilpd ymm15, yword [0xb42], 0x9c
	vpermilpd ymm0, yword [0xde1], 0x2b
