default rel
	vcmptruepd xmm1, xmm9, xmm8
	vcmptruepd xmm1, xmm8
	vcmptruepd xmm9, xmm11, oword [0x10a]
	vcmptruepd ymm0, ymm1, ymm14
	vcmptruepd ymm0, ymm14
	vcmptruepd ymm13, ymm8, ymm15
	vcmptruepd k3, xmm11, xmm12
	vcmptruepd k1, xmm2, xmm12
	vcmptruepd k5, ymm1, ymm0
	vcmptruepd k2, ymm7, ymm7
