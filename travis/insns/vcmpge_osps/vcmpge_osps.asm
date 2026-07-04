default rel
	vcmpge_osps xmm6, xmm7, xmm12
	vcmpge_osps xmm6, xmm12
	vcmpge_osps xmm6, xmm15, xmm2
	vcmpge_osps ymm6, ymm12, ymm13
	vcmpge_osps ymm6, ymm13
	vcmpge_osps ymm7, ymm9, yword [0xb9d]
	vcmpge_osps k6, xmm4, oword [0x3a5]
	vcmpge_osps k2, xmm11, xmm3
	vcmpge_osps k4, ymm4, ymm0
	vcmpge_osps k4, ymm15, ymm13
