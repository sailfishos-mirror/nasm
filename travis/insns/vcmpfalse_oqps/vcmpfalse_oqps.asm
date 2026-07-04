default rel
	vcmpfalse_oqps xmm0, xmm4, xmm12
	vcmpfalse_oqps xmm0, xmm12
	vcmpfalse_oqps xmm15, xmm13, xmm1
	vcmpfalse_oqps ymm15, ymm0, ymm8
	vcmpfalse_oqps ymm15, ymm8
	vcmpfalse_oqps ymm8, ymm10, ymm15
	vcmpfalse_oqps k5, xmm3, oword [0x6e0]
	vcmpfalse_oqps k1, xmm1, oword [0x3b1]
	vcmpfalse_oqps k4, ymm2, ymm5
	vcmpfalse_oqps k1, ymm12, yword [0xcdb]
