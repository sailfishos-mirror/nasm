default rel
	vcmpgt_oqsd xmm7, xmm12, qword [0x244]
	vcmpgt_oqsd xmm7, qword [0x244]
	vcmpgt_oqsd xmm2, xmm9, xmm11
	vcmpgt_oqsd k4, xmm1, xmm12
	vcmpgt_oqsd k2, xmm9, xmm7
