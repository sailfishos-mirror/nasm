default rel
	vcmpneq_osss xmm14, xmm2, xmm12
	vcmpneq_osss xmm2, xmm2, qword [0xb90]
	vcmpneq_osss k2, xmm3, xmm6
	vcmpneq_osss k5, xmm7, xmm1
