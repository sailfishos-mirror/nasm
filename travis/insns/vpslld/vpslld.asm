default rel
	vpslld xmm10, xmm0, xmm8
	vpslld xmm10, xmm8
	vpslld xmm3, xmm15, xmm14
	vpslld xmm7, xmm3, 0xdc
	vpslld xmm7, 0xdc
	vpslld xmm13, xmm13, 0x71
	vpslld ymm5, ymm7, xmm10
	vpslld ymm5, xmm10
	vpslld ymm14, ymm10, xmm8
	vpslld ymm2, ymm7, 0x54
	vpslld ymm2, 0x54
	vpslld ymm6, ymm7, 0x1b
