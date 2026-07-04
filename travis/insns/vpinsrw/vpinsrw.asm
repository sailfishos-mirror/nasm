default rel
	vpinsrw xmm12, xmm2, word [0xc12], 0x49
	vpinsrw xmm12, word [0xc12], 0x49
	vpinsrw xmm4, xmm10, word [0xba4], 0x1e
	vpinsrw xmm14, xmm4, bp, 0xcb
	vpinsrw xmm14, bp, 0xcb
	vpinsrw xmm6, xmm3, word [0x61b], 0xb7
	vpinsrw xmm5, xmm7, edx, 0xc4
	vpinsrw xmm5, edx, 0xc4
	vpinsrw xmm1, xmm9, edi, 0xca
