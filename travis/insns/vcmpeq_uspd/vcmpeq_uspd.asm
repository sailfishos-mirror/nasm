default rel
	vcmpeq_uspd xmm3, xmm5, oword [0x7ad]
	vcmpeq_uspd xmm3, oword [0x7ad]
	vcmpeq_uspd xmm5, xmm9, xmm13
	vcmpeq_uspd ymm4, ymm14, yword [0xca2]
	vcmpeq_uspd ymm4, yword [0xca2]
	vcmpeq_uspd ymm6, ymm4, ymm2
	vcmpeq_uspd k2, xmm1, xmm14
	vcmpeq_uspd k4, xmm3, xmm0
	vcmpeq_uspd k7, ymm6, ymm8
	vcmpeq_uspd k7, ymm0, yword [0xb92]
