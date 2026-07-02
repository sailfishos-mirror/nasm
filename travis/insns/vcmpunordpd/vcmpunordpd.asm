default rel
	vcmpunordpd xmm2, xmm2, oword [0x500]
	vcmpunordpd xmm6, xmm0, xmm7
	vcmpunordpd ymm5, ymm4, ymm8
	vcmpunordpd ymm3, ymm1, ymm10
	vcmpunordpd k5, xmm8, oword [0xe6c]
	vcmpunordpd k7, xmm2, oword [0x3d0]
	vcmpunordpd k2, ymm6, ymm5
	vcmpunordpd k1, ymm4, ymm14
