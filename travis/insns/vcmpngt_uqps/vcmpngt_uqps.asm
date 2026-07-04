default rel
	vcmpngt_uqps xmm9, xmm2, xmm2
	vcmpngt_uqps xmm9, xmm2
	vcmpngt_uqps xmm12, xmm9, xmm6
	vcmpngt_uqps ymm12, ymm6, ymm15
	vcmpngt_uqps ymm12, ymm15
	vcmpngt_uqps ymm13, ymm8, ymm14
	vcmpngt_uqps k6, xmm10, xmm6
	vcmpngt_uqps k3, xmm7, xmm1
	vcmpngt_uqps k6, ymm5, ymm5
	vcmpngt_uqps k2, ymm14, ymm3
