default rel
	vcmpsd xmm12, xmm12, qword [0x8ea], 0x5b
	vcmpsd xmm12, qword [0x8ea], 0x5b
	vcmpsd xmm11, xmm4, xmm8, 0x13
	vcmpsd k1, xmm7, xmm5, 0x5c
	vcmpsd k4, xmm0, xmm9, 0xf1
