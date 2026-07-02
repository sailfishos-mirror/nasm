default rel
	vcmpord_qpd xmm15, xmm3, xmm9
	vcmpord_qpd xmm15, xmm13, xmm5
	vcmpord_qpd ymm9, ymm1, yword [0xa24]
	vcmpord_qpd ymm1, ymm9, yword [0xf8b]
	vcmpord_qpd k1, xmm14, oword [0xb2d]
	vcmpord_qpd k4, xmm15, xmm3
	vcmpord_qpd k5, ymm15, ymm4
	vcmpord_qpd k1, ymm0, yword [0x9b2]
