default rel
	vcmpneq_uqsd xmm6, xmm15, xmm13
	vcmpneq_uqsd xmm8, xmm0, qword [0x483]
	vcmpneq_uqsd k4, xmm7, xmm1
	vcmpneq_uqsd k4, xmm5, qword [0x1b8]
