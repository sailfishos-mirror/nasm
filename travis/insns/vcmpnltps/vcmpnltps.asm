default rel
	vcmpnltps xmm8, xmm4, oword [0xc31]
	vcmpnltps xmm8, oword [0xc31]
	vcmpnltps xmm1, xmm13, xmm11
	vcmpnltps ymm12, ymm4, ymm11
	vcmpnltps ymm12, ymm11
	vcmpnltps ymm10, ymm3, yword [0x83e]
	vcmpnltps k7, xmm7, oword [0x396]
	vcmpnltps k7, xmm7, oword [0x593]
	vcmpnltps k5, ymm9, yword [0xaf7]
	vcmpnltps k7, ymm9, ymm4
