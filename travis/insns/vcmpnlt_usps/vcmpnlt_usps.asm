default rel
	vcmpnlt_usps xmm15, xmm7, xmm6
	vcmpnlt_usps xmm8, xmm4, oword [0x7b8]
	vcmpnlt_usps ymm7, ymm0, ymm1
	vcmpnlt_usps ymm2, ymm13, yword [0x6a6]
	vcmpnlt_usps k6, xmm0, xmm10
	vcmpnlt_usps k2, xmm14, oword [0xdba]
	vcmpnlt_usps k3, ymm5, yword [0x362]
	vcmpnlt_usps k4, ymm6, yword [0x427]
