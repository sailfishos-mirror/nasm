default rel
	vminss xmm7, xmm2, dword [0xafc]
	vminss xmm7, dword [0xafc]
	vminss xmm4, xmm6, xmm11
	vminss xmm5, xmm2, xmm11
	vminss xmm5, xmm11
	vminss xmm15, xmm5, dword [0xd7b]
