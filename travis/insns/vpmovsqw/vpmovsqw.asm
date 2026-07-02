default rel
	vpmovsqw xmm3, xmm9
	vpmovsqw xmm15, xmm12
	vpmovsqw xmm4, ymm9
	vpmovsqw xmm5, ymm9
	vpmovsqw xmm5, zmm15
	vpmovsqw xmm11, zmm5
	vpmovsqw dword [0xe5f], xmm6
	vpmovsqw dword [0x6d6], xmm1
