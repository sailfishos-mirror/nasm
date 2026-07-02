default rel
	vblendvps xmm11, xmm5, xmm13, xmm12
	vblendvps xmm15, xmm13, oword [0xa8d], xmm14
	vblendvps ymm15, ymm0, ymm6, ymm4
	vblendvps ymm15, ymm4, ymm7, ymm12
