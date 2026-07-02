default rel
	vcmpngt_ussd xmm10, xmm3, xmm12
	vcmpngt_ussd xmm4, xmm7, xmm5
	vcmpngt_ussd k6, xmm11, xmm8
	vcmpngt_ussd k6, xmm8, qword [0x2b4]
