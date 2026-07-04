default rel
	vcmpngtss xmm9, xmm1, xmm6
	vcmpngtss xmm9, xmm6
	vcmpngtss xmm14, xmm12, xmm10
	vcmpngtss k6, xmm14, dword [0x745]
	vcmpngtss k4, xmm9, xmm5
