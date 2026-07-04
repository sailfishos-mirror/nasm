default rel
	vcmpgt_oqss xmm6, xmm6, xmm2
	vcmpgt_oqss xmm6, xmm2
	vcmpgt_oqss xmm13, xmm1, qword [0x786]
	vcmpgt_oqss k5, xmm7, xmm12
	vcmpgt_oqss k5, xmm12, xmm0
