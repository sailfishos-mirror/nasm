default rel
	vaesdec xmm11, xmm14, xmm6
	vaesdec xmm10, xmm11, xmm1
	vaesdec ymm15, ymm3, yword [0xa9e]
	vaesdec ymm3, ymm13, yword [0x486]
	vaesdec zmm3, zmm15, zword [0x944]
	vaesdec zmm9, zmm5, zword [0xd8b]
