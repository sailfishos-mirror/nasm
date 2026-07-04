default rel
	vcmpnge_uqps xmm14, xmm2, xmm7
	vcmpnge_uqps xmm14, xmm7
	vcmpnge_uqps xmm5, xmm4, xmm13
	vcmpnge_uqps ymm6, ymm11, ymm3
	vcmpnge_uqps ymm6, ymm3
	vcmpnge_uqps ymm3, ymm1, ymm9
	vcmpnge_uqps k2, xmm1, oword [0x6d4]
	vcmpnge_uqps k3, xmm13, xmm0
	vcmpnge_uqps k6, ymm2, ymm3
	vcmpnge_uqps k7, ymm12, ymm9
