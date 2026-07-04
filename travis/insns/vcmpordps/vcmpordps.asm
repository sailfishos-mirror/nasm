default rel
	vcmpordps xmm1, xmm15, oword [0x1e8]
	vcmpordps xmm1, oword [0x1e8]
	vcmpordps xmm6, xmm3, xmm2
	vcmpordps ymm11, ymm14, yword [0xda6]
	vcmpordps ymm11, yword [0xda6]
	vcmpordps ymm0, ymm15, ymm11
	vcmpordps k5, xmm4, xmm13
	vcmpordps k3, xmm1, xmm9
	vcmpordps k1, ymm3, ymm2
	vcmpordps k4, ymm4, ymm7
