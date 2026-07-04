default rel
	vblendps xmm8, xmm9, oword [0x99f], 0x25
	vblendps xmm8, oword [0x99f], 0x25
	vblendps xmm9, xmm8, xmm5, 0xb3
	vblendps ymm5, ymm9, ymm14, 0x1
	vblendps ymm5, ymm14, 0x1
	vblendps ymm2, ymm9, ymm4, 0x4d
