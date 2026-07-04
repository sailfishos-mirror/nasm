default rel
	vgf2p8mulb xmm10, xmm2, xmm11
	vgf2p8mulb xmm10, xmm11
	vgf2p8mulb xmm12, xmm3, xmm13
	vgf2p8mulb ymm8, ymm5, yword [0x973]
	vgf2p8mulb ymm8, yword [0x973]
	vgf2p8mulb ymm7, ymm4, ymm11
	vgf2p8mulb xmm15, xmm4, oword [0xd76]
	vgf2p8mulb xmm15, oword [0xd76]
	vgf2p8mulb xmm2, xmm13, xmm4
	vgf2p8mulb ymm4, ymm7, ymm8
	vgf2p8mulb ymm4, ymm8
	vgf2p8mulb ymm0, ymm9, ymm6
