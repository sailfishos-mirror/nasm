default rel
	vcmpngt_usss xmm0, xmm3, xmm13
	vcmpngt_usss xmm0, xmm13
	vcmpngt_usss xmm14, xmm2, xmm1
	vcmpngt_usss k5, xmm12, dword [0xdd1]
	vcmpngt_usss k3, xmm11, dword [0xc79]
