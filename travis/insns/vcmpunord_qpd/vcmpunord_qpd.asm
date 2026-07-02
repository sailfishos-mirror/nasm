default rel
	vcmpunord_qpd xmm8, xmm12, xmm10
	vcmpunord_qpd xmm0, xmm0, xmm3
	vcmpunord_qpd ymm8, ymm9, ymm13
	vcmpunord_qpd ymm7, ymm7, yword [0x88f]
	vcmpunord_qpd k6, xmm1, xmm3
	vcmpunord_qpd k1, xmm8, oword [0x9db]
	vcmpunord_qpd k3, ymm0, yword [0x14d]
	vcmpunord_qpd k1, ymm11, ymm13
