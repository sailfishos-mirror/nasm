default rel
	vcmpord_qsd xmm0, xmm13, xmm15
	vcmpord_qsd xmm13, xmm9, qword [0xb47]
	vcmpord_qsd k3, xmm9, xmm1
	vcmpord_qsd k3, xmm6, xmm8
