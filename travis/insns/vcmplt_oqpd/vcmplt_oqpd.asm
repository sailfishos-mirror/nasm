default rel
	vcmplt_oqpd xmm11, xmm7, xmm10
	vcmplt_oqpd xmm12, xmm14, xmm12
	vcmplt_oqpd ymm3, ymm15, ymm10
	vcmplt_oqpd ymm9, ymm14, ymm5
	vcmplt_oqpd k7, xmm15, xmm4
	vcmplt_oqpd k7, xmm2, xmm9
	vcmplt_oqpd k7, ymm11, yword [0x159]
	vcmplt_oqpd k4, ymm13, ymm6
