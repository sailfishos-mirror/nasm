default rel
	vblendmps xmm13, xmm5, xmm6
	vblendmps xmm1, xmm9, oword [0x5fe]
	vblendmps ymm9, ymm10, ymm15
	vblendmps ymm7, ymm3, ymm12
	vblendmps zmm10, zmm5, zmm8
	vblendmps zmm9, zmm15, zmm6
