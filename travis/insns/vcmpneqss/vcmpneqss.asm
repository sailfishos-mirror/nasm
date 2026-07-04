default rel
	vcmpneqss xmm7, xmm6, qword [0x5b2]
	vcmpneqss xmm7, qword [0x5b2]
	vcmpneqss xmm8, xmm8, qword [0xe04]
	vcmpneqss k6, xmm8, xmm2
	vcmpneqss k3, xmm2, xmm8
