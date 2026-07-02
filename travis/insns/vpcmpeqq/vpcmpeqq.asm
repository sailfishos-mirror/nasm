default rel
	vpcmpeqq xmm4, xmm5, xmm3
	vpcmpeqq xmm8, xmm10, xmm14
	vpcmpeqq ymm8, ymm2, ymm6
	vpcmpeqq ymm11, ymm15, ymm9
	vpcmpeqq k2, xmm3, xmm4
	vpcmpeqq k3, xmm12, xmm11
	vpcmpeqq k3, ymm1, ymm13
	vpcmpeqq k1, ymm12, ymm11
