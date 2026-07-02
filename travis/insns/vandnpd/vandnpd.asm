default rel
	vandnpd xmm8, xmm2, xmm13
	vandnpd xmm6, xmm13, xmm0
	vandnpd ymm9, ymm1, ymm8
	vandnpd ymm13, ymm0, ymm3
	vandnpd xmm3, xmm5, oword [0x59c]
	vandnpd xmm7, xmm10, xmm14
	vandnpd ymm9, ymm14, yword [0xdac]
	vandnpd ymm14, ymm14, ymm4
