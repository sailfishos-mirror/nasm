default rel
	vcmple_oqps xmm6, xmm0, xmm4
	vcmple_oqps xmm0, xmm9, oword [0xf98]
	vcmple_oqps ymm8, ymm2, ymm9
	vcmple_oqps ymm14, ymm7, ymm10
	vcmple_oqps k4, xmm12, xmm1
	vcmple_oqps k2, xmm12, xmm8
	vcmple_oqps k6, ymm15, yword [0x8a0]
	vcmple_oqps k3, ymm6, ymm3
