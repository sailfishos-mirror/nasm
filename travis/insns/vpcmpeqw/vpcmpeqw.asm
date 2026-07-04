default rel
	vpcmpeqw xmm1, xmm7, xmm5
	vpcmpeqw xmm1, xmm5
	vpcmpeqw xmm15, xmm15, xmm0
	vpcmpeqw ymm1, ymm10, ymm12
	vpcmpeqw ymm1, ymm12
	vpcmpeqw ymm6, ymm4, yword [0xa4a]
	vpcmpeqw k2, xmm13, oword [0xc40]
	vpcmpeqw k6, xmm2, oword [0x46c]
	vpcmpeqw k6, ymm9, ymm0
	vpcmpeqw k3, ymm5, yword [0x83b]
