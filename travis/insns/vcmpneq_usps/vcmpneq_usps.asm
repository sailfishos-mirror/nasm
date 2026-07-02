default rel
	vcmpneq_usps xmm14, xmm7, xmm12
	vcmpneq_usps xmm12, xmm8, xmm7
	vcmpneq_usps ymm14, ymm3, ymm8
	vcmpneq_usps ymm15, ymm7, yword [0x521]
	vcmpneq_usps k3, xmm12, xmm11
	vcmpneq_usps k6, xmm7, xmm5
	vcmpneq_usps k3, ymm4, ymm9
	vcmpneq_usps k7, ymm7, ymm13
