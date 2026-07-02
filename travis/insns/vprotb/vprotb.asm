default rel
	vprotb xmm6, oword [0x4bc], xmm5
	vprotb xmm3, xmm6, xmm13
	vprotb xmm4, xmm13, oword [0xccd]
	vprotb xmm13, xmm13, xmm7
	vprotb xmm3, xmm12, 0xb7
	vprotb xmm12, xmm3, 0x8f
