default rel
	vpcmpgtd xmm10, xmm15, xmm3
	vpcmpgtd xmm3, xmm4, xmm0
	vpcmpgtd ymm4, ymm9, ymm4
	vpcmpgtd ymm12, ymm4, yword [0xe9f]
	vpcmpgtd k3, xmm11, xmm2
	vpcmpgtd k2, xmm5, oword [0xd1d]
	vpcmpgtd k2, ymm9, ymm5
	vpcmpgtd k4, ymm1, yword [0xcf6]
