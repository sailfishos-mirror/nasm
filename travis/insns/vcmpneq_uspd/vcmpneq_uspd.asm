default rel
	vcmpneq_uspd xmm9, xmm14, oword [0xbec]
	vcmpneq_uspd xmm9, oword [0xbec]
	vcmpneq_uspd xmm11, xmm8, xmm0
	vcmpneq_uspd ymm10, ymm12, ymm0
	vcmpneq_uspd ymm10, ymm0
	vcmpneq_uspd ymm6, ymm6, yword [0x677]
	vcmpneq_uspd k2, xmm10, xmm4
	vcmpneq_uspd k3, xmm10, xmm2
	vcmpneq_uspd k6, ymm0, ymm2
	vcmpneq_uspd k3, ymm10, yword [0x34d]
