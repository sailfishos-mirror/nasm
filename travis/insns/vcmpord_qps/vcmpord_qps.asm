default rel
	vcmpord_qps xmm4, xmm7, oword [0xf34]
	vcmpord_qps xmm10, xmm6, xmm8
	vcmpord_qps ymm4, ymm5, ymm10
	vcmpord_qps ymm6, ymm11, ymm7
	vcmpord_qps k4, xmm11, oword [0xd0e]
	vcmpord_qps k3, xmm14, xmm10
	vcmpord_qps k2, ymm2, ymm2
	vcmpord_qps k7, ymm9, ymm11
