default rel
	vcmpeq_usps xmm13, xmm9, xmm8
	vcmpeq_usps xmm14, xmm9, xmm13
	vcmpeq_usps ymm0, ymm2, ymm0
	vcmpeq_usps ymm6, ymm9, ymm15
	vcmpeq_usps k7, xmm15, xmm9
	vcmpeq_usps k6, xmm1, xmm15
	vcmpeq_usps k7, ymm1, yword [0x3fd]
	vcmpeq_usps k6, ymm15, ymm13
