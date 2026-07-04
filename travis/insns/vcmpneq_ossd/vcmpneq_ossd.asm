default rel
	vcmpneq_ossd xmm10, xmm2, xmm7
	vcmpneq_ossd xmm10, xmm7
	vcmpneq_ossd xmm12, xmm5, qword [0x994]
	vcmpneq_ossd k7, xmm9, xmm8
	vcmpneq_ossd k7, xmm11, qword [0xd57]
