default rel
	vcmple_osps xmm15, xmm4, oword [0x792]
	vcmple_osps xmm15, oword [0x792]
	vcmple_osps xmm11, xmm14, xmm8
	vcmple_osps ymm3, ymm13, ymm11
	vcmple_osps ymm3, ymm11
	vcmple_osps ymm9, ymm12, ymm8
	vcmple_osps k6, xmm1, oword [0x92b]
	vcmple_osps k4, xmm2, oword [0x94e]
	vcmple_osps k6, ymm0, ymm9
	vcmple_osps k3, ymm9, ymm15
