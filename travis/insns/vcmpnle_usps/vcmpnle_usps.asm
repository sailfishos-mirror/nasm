default rel
	vcmpnle_usps xmm7, xmm14, xmm15
	vcmpnle_usps xmm10, xmm15, xmm13
	vcmpnle_usps ymm7, ymm0, ymm3
	vcmpnle_usps ymm12, ymm14, yword [0x83b]
	vcmpnle_usps k1, xmm9, xmm6
	vcmpnle_usps k7, xmm0, oword [0x6fb]
	vcmpnle_usps k4, ymm1, ymm11
	vcmpnle_usps k1, ymm3, ymm13
