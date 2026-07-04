default rel
	vcmpneq_oqpd xmm9, xmm12, xmm12
	vcmpneq_oqpd xmm9, xmm12
	vcmpneq_oqpd xmm14, xmm11, xmm7
	vcmpneq_oqpd ymm6, ymm9, ymm14
	vcmpneq_oqpd ymm6, ymm14
	vcmpneq_oqpd ymm7, ymm14, ymm9
	vcmpneq_oqpd k3, xmm14, xmm9
	vcmpneq_oqpd k1, xmm6, xmm15
	vcmpneq_oqpd k2, ymm12, ymm13
	vcmpneq_oqpd k2, ymm4, ymm6
