default rel
	vcmpunord_qps xmm10, xmm4, xmm12
	vcmpunord_qps xmm10, xmm12
	vcmpunord_qps xmm5, xmm1, oword [0x145]
	vcmpunord_qps ymm2, ymm9, ymm3
	vcmpunord_qps ymm2, ymm3
	vcmpunord_qps ymm8, ymm6, ymm0
	vcmpunord_qps k7, xmm3, xmm2
	vcmpunord_qps k1, xmm15, oword [0x9f0]
	vcmpunord_qps k2, ymm5, ymm5
	vcmpunord_qps k4, ymm14, ymm3
