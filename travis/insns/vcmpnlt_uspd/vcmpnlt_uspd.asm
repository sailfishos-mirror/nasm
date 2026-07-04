default rel
	vcmpnlt_uspd xmm10, xmm8, xmm3
	vcmpnlt_uspd xmm10, xmm3
	vcmpnlt_uspd xmm0, xmm8, oword [0x3ae]
	vcmpnlt_uspd ymm0, ymm9, yword [0x9a2]
	vcmpnlt_uspd ymm0, yword [0x9a2]
	vcmpnlt_uspd ymm5, ymm12, yword [0xd02]
	vcmpnlt_uspd k7, xmm14, xmm9
	vcmpnlt_uspd k5, xmm10, xmm5
	vcmpnlt_uspd k6, ymm15, ymm4
	vcmpnlt_uspd k4, ymm10, yword [0xdfe]
