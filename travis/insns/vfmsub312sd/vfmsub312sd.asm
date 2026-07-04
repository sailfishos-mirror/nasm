default rel
	vfmsub312sd xmm1, xmm2, xmm1
	vfmsub312sd xmm4, xmm3, xmm5
	vfmsub312sd xmm12, xmm11, xmm9
	vfmsub312sd xmm1, xmm7, qword [eax+1]
	vfmsub312sd xmm3, xmm6, qword [eax+64]
