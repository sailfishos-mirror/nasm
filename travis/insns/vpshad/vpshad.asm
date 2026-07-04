default rel
	vpshad xmm9, oword [0x556], xmm14
	vpshad xmm9, xmm14
	vpshad xmm11, oword [0xb56], xmm7
	vpshad xmm15, xmm6, xmm11
	vpshad xmm15, xmm11
	vpshad xmm5, xmm7, oword [0x618]
