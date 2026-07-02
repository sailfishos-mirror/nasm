default rel
	vcmpfalse_osss xmm6, xmm10, xmm5
	vcmpfalse_osss xmm12, xmm7, xmm11
	vcmpfalse_osss k1, xmm8, xmm15
	vcmpfalse_osss k6, xmm5, dword [0x878]
