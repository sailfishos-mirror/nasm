default rel
	pfcmpeq mm7, mm2
	pfcmpeq mm6, mm0
	pfcmpeq mm7, qword [eax+1]
	pfcmpeq mm4, qword [eax+64]
