default rel
	vcmpord_qss xmm15, xmm4, xmm8
	vcmpord_qss xmm11, xmm1, xmm4
	vcmpord_qss k5, xmm14, dword [0xdb0]
	vcmpord_qss k7, xmm13, xmm10
