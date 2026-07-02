default rel
	vcmpord_sss xmm7, xmm9, qword [0xe60]
	vcmpord_sss xmm2, xmm9, xmm8
	vcmpord_sss k5, xmm5, dword [0xaab]
	vcmpord_sss k1, xmm15, xmm5
