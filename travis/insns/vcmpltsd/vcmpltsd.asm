default rel
	vcmpltsd xmm1, xmm7, xmm12
	vcmpltsd xmm11, xmm7, xmm15
	vcmpltsd k6, xmm13, xmm7
	vcmpltsd k3, xmm1, qword [0x6eb]
