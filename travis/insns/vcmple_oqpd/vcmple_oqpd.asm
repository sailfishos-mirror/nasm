default rel
	vcmple_oqpd xmm10, xmm13, xmm0
	vcmple_oqpd xmm10, xmm0
	vcmple_oqpd xmm8, xmm15, xmm7
	vcmple_oqpd ymm15, ymm10, ymm0
	vcmple_oqpd ymm15, ymm0
	vcmple_oqpd ymm13, ymm8, yword [0x389]
	vcmple_oqpd k4, xmm10, xmm10
	vcmple_oqpd k3, xmm10, oword [0xce5]
	vcmple_oqpd k2, ymm4, yword [0x76a]
	vcmple_oqpd k7, ymm6, ymm9
