default rel
	vpmovsqd xmm9, xmm1
	vpmovsqd xmm4, xmm10
	vpmovsqd xmm14, ymm5
	vpmovsqd xmm2, ymm12
	vpmovsqd ymm10, zmm10
	vpmovsqd ymm6, zmm4
	vpmovsqd qword [0xfbe], xmm6
	vpmovsqd qword [0xcb1], xmm10
