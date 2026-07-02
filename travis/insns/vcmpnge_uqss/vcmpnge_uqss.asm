default rel
	vcmpnge_uqss xmm15, xmm14, xmm3
	vcmpnge_uqss xmm5, xmm15, xmm2
	vcmpnge_uqss k2, xmm12, dword [0x806]
	vcmpnge_uqss k7, xmm14, xmm7
