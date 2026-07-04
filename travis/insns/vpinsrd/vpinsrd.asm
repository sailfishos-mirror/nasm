default rel
	vpinsrd xmm6, xmm2, dword [0xa24], 0xa0
	vpinsrd xmm6, dword [0xa24], 0xa0
	vpinsrd xmm2, xmm0, dword [0x2a9], 0x8b
	vpinsrd xmm7, xmm15, edi, 0xb0
	vpinsrd xmm7, edi, 0xb0
	vpinsrd xmm0, xmm0, dword [0x22a], 0x21
