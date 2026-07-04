default rel
	vcmpnge_uqpd xmm5, xmm9, oword [0x87b]
	vcmpnge_uqpd xmm5, oword [0x87b]
	vcmpnge_uqpd xmm7, xmm8, oword [0x8d4]
	vcmpnge_uqpd ymm13, ymm7, yword [0x6d1]
	vcmpnge_uqpd ymm13, yword [0x6d1]
	vcmpnge_uqpd ymm4, ymm12, ymm11
	vcmpnge_uqpd k7, xmm6, xmm7
	vcmpnge_uqpd k3, xmm1, oword [0x674]
	vcmpnge_uqpd k1, ymm7, yword [0xaf9]
	vcmpnge_uqpd k2, ymm14, ymm5
