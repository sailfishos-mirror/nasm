default rel
	vcmpnle_uqsd xmm1, xmm1, xmm2
	vcmpnle_uqsd xmm1, xmm2
	vcmpnle_uqsd xmm0, xmm5, qword [0x4f3]
	vcmpnle_uqsd k2, xmm4, qword [0xb38]
	vcmpnle_uqsd k7, xmm12, xmm5
