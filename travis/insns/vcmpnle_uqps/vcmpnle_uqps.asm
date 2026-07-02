default rel
	vcmpnle_uqps xmm14, xmm6, xmm0
	vcmpnle_uqps xmm13, xmm13, xmm5
	vcmpnle_uqps ymm13, ymm2, ymm14
	vcmpnle_uqps ymm5, ymm2, ymm5
	vcmpnle_uqps k1, xmm1, oword [0xad9]
	vcmpnle_uqps k5, xmm14, xmm8
	vcmpnle_uqps k4, ymm14, ymm12
	vcmpnle_uqps k3, ymm2, ymm8
