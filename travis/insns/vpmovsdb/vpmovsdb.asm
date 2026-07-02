default rel
	vpmovsdb xmm9, xmm8
	vpmovsdb xmm3, xmm6
	vpmovsdb xmm3, ymm10
	vpmovsdb xmm8, ymm7
	vpmovsdb xmm13, zmm7
	vpmovsdb xmm6, zmm11
	vpmovsdb dword [0x9f0], xmm0
	vpmovsdb dword [0xa4b], xmm11
