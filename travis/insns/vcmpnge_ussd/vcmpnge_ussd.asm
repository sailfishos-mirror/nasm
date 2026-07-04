default rel
	vcmpnge_ussd xmm15, xmm14, xmm7
	vcmpnge_ussd xmm15, xmm7
	vcmpnge_ussd xmm2, xmm0, xmm15
	vcmpnge_ussd k2, xmm0, qword [0x9f8]
	vcmpnge_ussd k6, xmm2, xmm10
