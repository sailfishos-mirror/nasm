default rel
	vcmpgtps xmm6, xmm9, xmm12
	vcmpgtps xmm4, xmm13, oword [0x453]
	vcmpgtps ymm4, ymm9, ymm9
	vcmpgtps ymm3, ymm5, ymm8
	vcmpgtps k7, xmm1, xmm14
	vcmpgtps k6, xmm1, xmm12
	vcmpgtps k3, ymm9, yword [0x700]
	vcmpgtps k2, ymm1, yword [0x3b6]
