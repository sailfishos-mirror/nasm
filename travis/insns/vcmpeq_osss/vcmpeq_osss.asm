default rel
	vcmpeq_osss xmm13, xmm1, xmm7
	vcmpeq_osss xmm13, xmm7
	vcmpeq_osss xmm5, xmm11, xmm5
	vcmpeq_osss k6, xmm10, dword [0xf6a]
	vcmpeq_osss k5, xmm2, xmm13
