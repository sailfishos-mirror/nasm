default rel
	vcmpge_oqps xmm13, xmm9, oword [0x569]
	vcmpge_oqps xmm13, oword [0x569]
	vcmpge_oqps xmm10, xmm4, xmm15
	vcmpge_oqps ymm6, ymm2, ymm12
	vcmpge_oqps ymm6, ymm12
	vcmpge_oqps ymm0, ymm2, ymm8
	vcmpge_oqps k3, xmm1, oword [0xf61]
	vcmpge_oqps k4, xmm1, xmm3
	vcmpge_oqps k2, ymm7, ymm15
	vcmpge_oqps k2, ymm8, ymm5
