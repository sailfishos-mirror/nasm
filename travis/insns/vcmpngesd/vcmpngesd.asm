default rel
	vcmpngesd xmm8, xmm3, xmm1
	vcmpngesd xmm8, xmm1
	vcmpngesd xmm2, xmm5, xmm6
	vcmpngesd k5, xmm5, xmm12
	vcmpngesd k5, xmm14, qword [0xb38]
