default rel
	vcmpeq_osps xmm2, xmm4, xmm12
	vcmpeq_osps xmm2, xmm12
	vcmpeq_osps xmm8, xmm10, xmm5
	vcmpeq_osps ymm9, ymm0, ymm9
	vcmpeq_osps ymm9, ymm9
	vcmpeq_osps ymm9, ymm8, yword [0x9d0]
	vcmpeq_osps k2, xmm2, xmm1
	vcmpeq_osps k4, xmm3, oword [0xba1]
	vcmpeq_osps k4, ymm4, yword [0xdc7]
	vcmpeq_osps k7, ymm7, ymm10
