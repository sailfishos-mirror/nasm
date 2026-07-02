default rel
	vpaddsb xmm15, xmm0, xmm12
	vpaddsb xmm6, xmm13, xmm15
	vpaddsb ymm5, ymm4, ymm4
	vpaddsb ymm11, ymm15, ymm14
	vpaddsb xmm6, xmm14, xmm6
	vpaddsb xmm8, xmm13, oword [0x995]
	vpaddsb ymm0, ymm9, ymm12
	vpaddsb ymm7, ymm13, yword [0xa82]
