default rel
	vcmpnge_uqsd xmm14, xmm0, xmm4
	vcmpnge_uqsd xmm10, xmm0, qword [0x640]
	vcmpnge_uqsd k7, xmm1, qword [0x217]
	vcmpnge_uqsd k4, xmm7, xmm2
