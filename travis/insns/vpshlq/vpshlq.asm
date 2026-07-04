default rel
	vpshlq xmm2, xmm10, xmm9
	vpshlq xmm2, xmm9
	vpshlq xmm1, xmm8, xmm1
	vpshlq xmm11, xmm9, oword [0x62e]
	vpshlq xmm11, oword [0x62e]
	vpshlq xmm7, xmm6, oword [0xe22]
