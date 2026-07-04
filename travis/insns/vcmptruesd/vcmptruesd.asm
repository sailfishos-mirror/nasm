default rel
	vcmptruesd xmm3, xmm9, xmm15
	vcmptruesd xmm3, xmm15
	vcmptruesd xmm8, xmm7, xmm8
	vcmptruesd k3, xmm10, xmm7
	vcmptruesd k7, xmm9, qword [0xf42]
