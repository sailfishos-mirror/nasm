default rel
	psignd mm1, mm7
	psignd mm7, mm1
	psignd xmm3, xmm4
	psignd xmm3, xmm3
	psignd xmm11, xmm15
	psignd mm6, qword [eax+1]
	psignd mm6, qword [eax+64]
	psignd xmm2, oword [eax+1]
	psignd xmm4, oword [eax+64]
