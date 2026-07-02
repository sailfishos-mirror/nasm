default rel
	vcmpneq_uqss xmm6, xmm3, xmm3
	vcmpneq_uqss xmm5, xmm2, xmm11
	vcmpneq_uqss k2, xmm13, xmm13
	vcmpneq_uqss k4, xmm14, dword [0x4be]
