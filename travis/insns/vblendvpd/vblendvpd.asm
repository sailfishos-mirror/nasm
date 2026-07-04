default rel
	vblendvpd xmm13, xmm5, xmm13, xmm6
	vblendvpd xmm13, xmm13, xmm6
	vblendvpd xmm12, xmm0, oword [0x749], xmm4
	vblendvpd ymm13, ymm5, ymm4, ymm3
	vblendvpd ymm13, ymm4, ymm3
	vblendvpd ymm15, ymm5, ymm1, ymm12
