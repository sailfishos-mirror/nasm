default rel
	vcmpnge_usps xmm10, xmm14, xmm12
	vcmpnge_usps xmm10, xmm12
	vcmpnge_usps xmm3, xmm2, xmm5
	vcmpnge_usps ymm1, ymm11, ymm3
	vcmpnge_usps ymm1, ymm3
	vcmpnge_usps ymm15, ymm12, yword [0xced]
	vcmpnge_usps k4, xmm13, xmm1
	vcmpnge_usps k7, xmm4, xmm13
	vcmpnge_usps k7, ymm14, ymm5
	vcmpnge_usps k7, ymm3, ymm13
