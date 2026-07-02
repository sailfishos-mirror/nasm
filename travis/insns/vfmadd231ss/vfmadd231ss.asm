default rel
	vfmadd231ss xmm1, xmm2, dword [0x388]
	vfmadd231ss xmm12, xmm9, xmm1
	vfmadd231ss xmm2, xmm0, dword [0x9fb]
	vfmadd231ss xmm7, xmm3, xmm13
