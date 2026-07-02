default rel
	vpinsrb xmm2, xmm1, byte [0x3f4], 0x5
	vpinsrb xmm0, xmm11, byte [0x6ec], 0xe3
	vpinsrb xmm9, xmm15, bl, 0xa0
	vpinsrb xmm9, xmm5, dl, 0xa9
	vpinsrb xmm2, xmm10, edx, 0xcd
	vpinsrb xmm8, xmm0, eax, 0x45
