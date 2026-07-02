default rel
	vcmptrueps xmm12, xmm7, xmm9
	vcmptrueps xmm10, xmm10, oword [0xeef]
	vcmptrueps ymm15, ymm13, ymm10
	vcmptrueps ymm4, ymm15, ymm15
	vcmptrueps k5, xmm6, xmm9
	vcmptrueps k1, xmm0, xmm4
	vcmptrueps k5, ymm6, ymm12
	vcmptrueps k3, ymm10, ymm14
