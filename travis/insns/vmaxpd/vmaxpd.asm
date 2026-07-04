default rel
	vmaxpd xmm9, xmm10, xmm1
	vmaxpd xmm9, xmm1
	vmaxpd xmm10, xmm5, xmm0
	vmaxpd ymm15, ymm9, ymm11
	vmaxpd ymm15, ymm11
	vmaxpd ymm0, ymm10, ymm5
	vmaxpd xmm2, xmm10, xmm8
	vmaxpd xmm2, xmm8
	vmaxpd xmm1, xmm1, xmm4
	vmaxpd ymm5, ymm2, yword [0x330]
	vmaxpd ymm5, yword [0x330]
	vmaxpd ymm3, ymm7, ymm11
