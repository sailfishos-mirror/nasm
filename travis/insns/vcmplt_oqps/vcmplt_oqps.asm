default rel
	vcmplt_oqps xmm3, xmm5, oword [0x103]
	vcmplt_oqps xmm3, oword [0x103]
	vcmplt_oqps xmm8, xmm3, oword [0xc78]
	vcmplt_oqps ymm5, ymm7, ymm12
	vcmplt_oqps ymm5, ymm12
	vcmplt_oqps ymm12, ymm14, yword [0xbf0]
	vcmplt_oqps k2, xmm5, oword [0xba5]
	vcmplt_oqps k6, xmm11, xmm3
	vcmplt_oqps k5, ymm4, ymm15
	vcmplt_oqps k2, ymm13, yword [0x8f7]
