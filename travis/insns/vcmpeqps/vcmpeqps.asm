default rel
	vcmpeqps xmm6, xmm9, xmm14
	vcmpeqps xmm7, xmm10, xmm7
	vcmpeqps ymm12, ymm3, ymm13
	vcmpeqps ymm7, ymm7, yword [0xe46]
	vcmpeqps k6, xmm7, oword [0x766]
	vcmpeqps k6, xmm4, xmm14
	vcmpeqps k1, ymm11, yword [0xd1f]
	vcmpeqps k2, ymm13, ymm4
