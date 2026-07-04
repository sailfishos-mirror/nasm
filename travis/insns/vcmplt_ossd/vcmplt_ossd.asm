default rel
	vcmplt_ossd xmm13, xmm15, qword [0xb27]
	vcmplt_ossd xmm13, qword [0xb27]
	vcmplt_ossd xmm5, xmm14, xmm15
	vcmplt_ossd k1, xmm8, qword [0xecb]
	vcmplt_ossd k3, xmm3, xmm5
