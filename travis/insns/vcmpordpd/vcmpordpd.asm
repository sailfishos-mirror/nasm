default rel
	vcmpordpd xmm2, xmm14, oword [0xf19]
	vcmpordpd xmm2, oword [0xf19]
	vcmpordpd xmm4, xmm12, oword [0x659]
	vcmpordpd ymm15, ymm14, ymm0
	vcmpordpd ymm15, ymm0
	vcmpordpd ymm3, ymm8, ymm0
	vcmpordpd k5, xmm0, oword [0x3ba]
	vcmpordpd k1, xmm2, oword [0x1a7]
	vcmpordpd k1, ymm3, yword [0x120]
	vcmpordpd k3, ymm2, yword [0x43a]
