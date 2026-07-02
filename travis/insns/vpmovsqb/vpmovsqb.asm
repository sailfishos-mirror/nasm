default rel
	vpmovsqb xmm7, xmm9
	vpmovsqb xmm12, xmm0
	vpmovsqb xmm7, ymm3
	vpmovsqb xmm9, ymm7
	vpmovsqb xmm2, zmm2
	vpmovsqb xmm1, zmm0
	vpmovsqb word [0x454], xmm10
	vpmovsqb word [0x32b], xmm0
