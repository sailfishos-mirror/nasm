default rel
	vcmpngt_usps xmm13, xmm2, oword [0xea7]
	vcmpngt_usps xmm15, xmm4, xmm15
	vcmpngt_usps ymm6, ymm9, ymm9
	vcmpngt_usps ymm13, ymm0, ymm3
	vcmpngt_usps k2, xmm3, xmm4
	vcmpngt_usps k7, xmm0, xmm14
	vcmpngt_usps k6, ymm14, ymm8
	vcmpngt_usps k1, ymm5, ymm5
