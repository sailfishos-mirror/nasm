default rel
	vcmple_oqss xmm3, xmm1, xmm9
	vcmple_oqss xmm3, xmm9
	vcmple_oqss xmm7, xmm13, qword [0x110]
	vcmple_oqss k7, xmm15, xmm14
	vcmple_oqss k6, xmm9, dword [0x4f7]
