default rel
	vcmpfalse_oqss xmm10, xmm14, qword [0x5bf]
	vcmpfalse_oqss xmm6, xmm13, qword [0xd6b]
	vcmpfalse_oqss k2, xmm10, xmm14
	vcmpfalse_oqss k6, xmm2, dword [0xe97]
