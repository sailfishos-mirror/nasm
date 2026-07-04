default rel
	vcmpeqsd xmm11, xmm9, xmm3
	vcmpeqsd xmm11, xmm3
	vcmpeqsd xmm1, xmm11, qword [0xc1a]
	vcmpeqsd k4, xmm1, xmm15
	vcmpeqsd k7, xmm15, xmm7
