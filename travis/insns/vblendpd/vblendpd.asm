default rel
	vblendpd xmm1, xmm8, xmm4, 0xc6
	vblendpd xmm1, xmm4, 0xc6
	vblendpd xmm13, xmm11, oword [0xabf], 0x94
	vblendpd ymm15, ymm6, ymm6, 0x8f
	vblendpd ymm15, ymm6, 0x8f
	vblendpd ymm5, ymm13, yword [0x426], 0x2c
