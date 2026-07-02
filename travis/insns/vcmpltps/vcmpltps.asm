default rel
	vcmpltps xmm7, xmm4, oword [0xf2c]
	vcmpltps xmm4, xmm10, oword [0xeec]
	vcmpltps ymm3, ymm1, yword [0x8b6]
	vcmpltps ymm3, ymm1, ymm2
	vcmpltps k5, xmm14, xmm3
	vcmpltps k7, xmm1, xmm7
	vcmpltps k3, ymm0, yword [0x9fe]
	vcmpltps k4, ymm5, ymm0
