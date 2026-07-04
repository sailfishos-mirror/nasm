default rel
	mulpd xmm5, oword [0x4b8]
	mulpd xmm3, xmm0
	mulpd xmm12, xmm14
	mulpd xmm0, oword [eax+1]
	mulpd xmm4, oword [eax+64]
