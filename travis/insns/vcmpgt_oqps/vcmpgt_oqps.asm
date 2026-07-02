default rel
	vcmpgt_oqps xmm8, xmm2, oword [0x71c]
	vcmpgt_oqps xmm9, xmm3, xmm3
	vcmpgt_oqps ymm11, ymm2, ymm11
	vcmpgt_oqps ymm1, ymm8, ymm11
	vcmpgt_oqps k5, xmm10, xmm0
	vcmpgt_oqps k1, xmm9, xmm11
	vcmpgt_oqps k3, ymm1, yword [0x588]
	vcmpgt_oqps k2, ymm4, ymm14
