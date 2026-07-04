default rel
	vcmpneq_uqpd xmm5, xmm11, oword [0x61a]
	vcmpneq_uqpd xmm5, oword [0x61a]
	vcmpneq_uqpd xmm0, xmm6, xmm9
	vcmpneq_uqpd ymm0, ymm14, ymm13
	vcmpneq_uqpd ymm0, ymm13
	vcmpneq_uqpd ymm6, ymm1, ymm6
	vcmpneq_uqpd k7, xmm2, xmm5
	vcmpneq_uqpd k6, xmm10, xmm12
	vcmpneq_uqpd k4, ymm6, ymm2
	vcmpneq_uqpd k3, ymm1, ymm15
