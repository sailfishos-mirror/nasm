default rel
	vcmpltss xmm8, xmm14, qword [0x6ad]
	vcmpltss xmm8, qword [0x6ad]
	vcmpltss xmm2, xmm9, xmm8
	vcmpltss k2, xmm0, xmm11
	vcmpltss k1, xmm1, xmm10
