default rel
	vcmppd xmm15, xmm3, xmm8, 0xcf
	vcmppd xmm13, xmm5, xmm15, 0xeb
	vcmppd ymm4, ymm6, ymm1, 0xa5
	vcmppd ymm10, ymm3, ymm2, 0x58
	vcmppd k2, xmm5, xmm1, 0x1d
	vcmppd k3, xmm11, xmm8, 0xbd
	vcmppd k3, ymm10, ymm2, 0xb5
	vcmppd k6, ymm4, ymm4, 0x81
