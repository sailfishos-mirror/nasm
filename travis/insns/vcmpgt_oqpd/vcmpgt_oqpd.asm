default rel
	vcmpgt_oqpd xmm0, xmm10, oword [0x8ff]
	vcmpgt_oqpd xmm6, xmm10, xmm5
	vcmpgt_oqpd ymm2, ymm15, ymm7
	vcmpgt_oqpd ymm3, ymm1, ymm2
	vcmpgt_oqpd k6, xmm9, xmm4
	vcmpgt_oqpd k3, xmm13, xmm10
	vcmpgt_oqpd k3, ymm9, ymm13
	vcmpgt_oqpd k2, ymm14, ymm14
