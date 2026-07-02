default rel
	vcmpnle_uqpd xmm9, xmm6, xmm7
	vcmpnle_uqpd xmm6, xmm14, xmm3
	vcmpnle_uqpd ymm0, ymm14, yword [0x97d]
	vcmpnle_uqpd ymm0, ymm8, yword [0xb23]
	vcmpnle_uqpd k4, xmm0, oword [0x7b6]
	vcmpnle_uqpd k2, xmm2, oword [0x688]
	vcmpnle_uqpd k1, ymm12, yword [0x3c7]
	vcmpnle_uqpd k7, ymm5, ymm4
