default rel
	vcmpord_ssd xmm7, xmm3, xmm12
	vcmpord_ssd xmm7, xmm12
	vcmpord_ssd xmm10, xmm0, qword [0xea6]
	vcmpord_ssd k3, xmm3, qword [0x8c1]
	vcmpord_ssd k2, xmm1, qword [0x610]
