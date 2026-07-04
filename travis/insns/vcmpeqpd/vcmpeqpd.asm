default rel
	vcmpeqpd xmm14, xmm0, xmm7
	vcmpeqpd xmm14, xmm7
	vcmpeqpd xmm15, xmm8, xmm15
	vcmpeqpd ymm4, ymm2, ymm3
	vcmpeqpd ymm4, ymm3
	vcmpeqpd ymm3, ymm3, ymm5
	vcmpeqpd k4, xmm4, xmm8
	vcmpeqpd k1, xmm9, xmm13
	vcmpeqpd k6, ymm9, yword [0x199]
	vcmpeqpd k6, ymm8, ymm13
