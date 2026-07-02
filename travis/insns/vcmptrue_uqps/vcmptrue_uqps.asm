default rel
	vcmptrue_uqps xmm14, xmm14, xmm2
	vcmptrue_uqps xmm12, xmm12, xmm13
	vcmptrue_uqps ymm13, ymm1, yword [0x638]
	vcmptrue_uqps ymm4, ymm1, yword [0x7a5]
	vcmptrue_uqps k3, xmm2, oword [0xd77]
	vcmptrue_uqps k4, xmm12, oword [0x5a4]
	vcmptrue_uqps k3, ymm12, ymm7
	vcmptrue_uqps k3, ymm13, ymm14
