default rel
	vcmpnltss xmm12, xmm7, xmm15
	vcmpnltss xmm12, xmm15
	vcmpnltss xmm12, xmm4, qword [0x6aa]
	vcmpnltss k6, xmm9, dword [0x267]
	vcmpnltss k7, xmm1, dword [0x432]
