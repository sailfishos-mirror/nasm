default rel
	vcmpgt_osps xmm6, xmm3, xmm1
	vcmpgt_osps xmm1, xmm11, xmm10
	vcmpgt_osps ymm3, ymm7, ymm8
	vcmpgt_osps ymm6, ymm15, yword [0x9ad]
	vcmpgt_osps k6, xmm6, xmm1
	vcmpgt_osps k4, xmm8, xmm12
	vcmpgt_osps k2, ymm0, ymm7
	vcmpgt_osps k1, ymm4, ymm3
