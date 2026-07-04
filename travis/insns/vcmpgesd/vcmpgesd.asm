default rel
	vcmpgesd xmm7, xmm9, xmm7
	vcmpgesd xmm7, xmm7
	vcmpgesd xmm0, xmm5, xmm3
	vcmpgesd k7, xmm9, xmm12
	vcmpgesd k2, xmm12, qword [0xe7c]
