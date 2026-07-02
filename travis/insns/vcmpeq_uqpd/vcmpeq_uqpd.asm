default rel
	vcmpeq_uqpd xmm7, xmm15, xmm5
	vcmpeq_uqpd xmm6, xmm0, xmm14
	vcmpeq_uqpd ymm6, ymm2, yword [0x84e]
	vcmpeq_uqpd ymm11, ymm12, yword [0x3ce]
	vcmpeq_uqpd k1, xmm9, xmm6
	vcmpeq_uqpd k1, xmm11, xmm3
	vcmpeq_uqpd k7, ymm7, yword [0xb81]
	vcmpeq_uqpd k5, ymm11, yword [0xc33]
