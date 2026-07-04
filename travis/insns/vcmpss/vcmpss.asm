default rel
	vcmpss xmm3, xmm11, dword [0x40b], 0xbf
	vcmpss xmm3, dword [0x40b], 0xbf
	vcmpss xmm11, xmm7, xmm6, 0x7b
	vcmpss k7, xmm15, xmm0, 0x16
	vcmpss k7, xmm5, xmm1, 0x32
