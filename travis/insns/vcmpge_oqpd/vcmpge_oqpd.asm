default rel
	vcmpge_oqpd xmm1, xmm10, xmm3
	vcmpge_oqpd xmm11, xmm4, oword [0xc69]
	vcmpge_oqpd ymm1, ymm5, ymm15
	vcmpge_oqpd ymm13, ymm14, yword [0xee4]
	vcmpge_oqpd k5, xmm15, oword [0xb59]
	vcmpge_oqpd k7, xmm0, xmm0
	vcmpge_oqpd k7, ymm9, ymm7
	vcmpge_oqpd k4, ymm15, ymm10
