default rel
	vminps xmm10, xmm6, oword [0x24a]
	vminps xmm4, xmm9, oword [0x567]
	vminps ymm5, ymm6, ymm10
	vminps ymm8, ymm10, ymm5
	vminps xmm14, xmm14, oword [0x62d]
	vminps xmm0, xmm9, oword [0x458]
	vminps ymm8, ymm13, yword [0xe25]
	vminps ymm12, ymm2, ymm13
