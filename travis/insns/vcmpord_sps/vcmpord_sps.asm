default rel
	vcmpord_sps xmm2, xmm12, xmm5
	vcmpord_sps xmm2, xmm5
	vcmpord_sps xmm0, xmm8, xmm12
	vcmpord_sps ymm15, ymm14, ymm10
	vcmpord_sps ymm15, ymm10
	vcmpord_sps ymm9, ymm2, yword [0x33a]
	vcmpord_sps k6, xmm1, oword [0xd69]
	vcmpord_sps k7, xmm14, xmm3
	vcmpord_sps k2, ymm10, yword [0xc6f]
	vcmpord_sps k2, ymm4, yword [0x8e5]
