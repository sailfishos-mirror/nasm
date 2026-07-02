default rel
	vpdpbsud xmm15, xmm15, xmm6
	vpdpbsud xmm15, xmm5, xmm3
	vpdpbsud ymm4, ymm1, ymm14
	vpdpbsud ymm4, ymm9, yword [0x20e]
	vpdpbsud xmm8, xmm5, xmm15
	vpdpbsud xmm3, xmm6, oword [0x1a3]
	vpdpbsud ymm3, ymm14, ymm2
	vpdpbsud ymm11, ymm14, ymm4
