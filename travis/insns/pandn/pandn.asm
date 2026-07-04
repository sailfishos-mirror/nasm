default rel
	pandn mm3, qword [0xcd9]
	pandn mm5, mm7
	pandn xmm1, xmm7
	pandn xmm7, xmm0
	pandn xmm9, xmm11
	pandn mm4, qword [eax+1]
	pandn mm4, qword [eax+64]
	pandn xmm5, oword [eax+1]
	pandn xmm3, oword [eax+64]
