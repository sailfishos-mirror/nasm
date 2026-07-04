default rel
	vcmpneq_uqps xmm1, xmm2, xmm12
	vcmpneq_uqps xmm1, xmm12
	vcmpneq_uqps xmm9, xmm13, xmm6
	vcmpneq_uqps ymm14, ymm14, ymm4
	vcmpneq_uqps ymm14, ymm4
	vcmpneq_uqps ymm4, ymm7, ymm4
	vcmpneq_uqps k4, xmm13, xmm6
	vcmpneq_uqps k6, xmm0, xmm10
	vcmpneq_uqps k3, ymm4, yword [0xcf2]
	vcmpneq_uqps k1, ymm8, ymm13
