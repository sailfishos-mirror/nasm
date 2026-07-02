default rel
	vpcmpgtw xmm6, xmm15, oword [0x658]
	vpcmpgtw xmm13, xmm3, xmm4
	vpcmpgtw ymm2, ymm11, yword [0x12c]
	vpcmpgtw ymm12, ymm9, ymm1
	vpcmpgtw k3, xmm10, oword [0x806]
	vpcmpgtw k2, xmm13, xmm0
	vpcmpgtw k3, ymm5, ymm11
	vpcmpgtw k4, ymm11, yword [0xb40]
