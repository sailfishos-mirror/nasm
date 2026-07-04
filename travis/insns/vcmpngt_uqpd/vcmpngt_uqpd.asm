default rel
	vcmpngt_uqpd xmm10, xmm10, xmm1
	vcmpngt_uqpd xmm10, xmm1
	vcmpngt_uqpd xmm14, xmm15, xmm15
	vcmpngt_uqpd ymm3, ymm11, yword [0xed5]
	vcmpngt_uqpd ymm3, yword [0xed5]
	vcmpngt_uqpd ymm4, ymm8, yword [0x597]
	vcmpngt_uqpd k7, xmm10, xmm13
	vcmpngt_uqpd k7, xmm0, xmm4
	vcmpngt_uqpd k2, ymm5, ymm10
	vcmpngt_uqpd k3, ymm14, ymm8
