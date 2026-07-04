default rel
	vcmpge_ossd xmm6, xmm5, xmm7
	vcmpge_ossd xmm6, xmm7
	vcmpge_ossd xmm6, xmm1, xmm15
	vcmpge_ossd k5, xmm4, qword [0xace]
	vcmpge_ossd k1, xmm13, xmm1
