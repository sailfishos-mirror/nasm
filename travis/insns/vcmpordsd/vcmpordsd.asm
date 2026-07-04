default rel
	vcmpordsd xmm2, xmm15, qword [0xedf]
	vcmpordsd xmm2, qword [0xedf]
	vcmpordsd xmm14, xmm15, xmm2
	vcmpordsd k6, xmm11, xmm5
	vcmpordsd k6, xmm0, xmm1
