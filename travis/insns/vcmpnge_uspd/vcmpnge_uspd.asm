default rel
	vcmpnge_uspd xmm1, xmm3, xmm3
	vcmpnge_uspd xmm1, xmm3
	vcmpnge_uspd xmm4, xmm8, xmm10
	vcmpnge_uspd ymm1, ymm2, yword [0x471]
	vcmpnge_uspd ymm1, yword [0x471]
	vcmpnge_uspd ymm7, ymm8, ymm15
	vcmpnge_uspd k1, xmm4, oword [0x967]
	vcmpnge_uspd k6, xmm14, oword [0xff1]
	vcmpnge_uspd k6, ymm9, yword [0xea0]
	vcmpnge_uspd k7, ymm2, ymm2
