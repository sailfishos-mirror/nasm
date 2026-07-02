default rel
	vpcmpgtb xmm10, xmm0, oword [0x896]
	vpcmpgtb xmm2, xmm10, xmm4
	vpcmpgtb ymm13, ymm10, ymm1
	vpcmpgtb ymm7, ymm12, ymm8
	vpcmpgtb k3, xmm13, xmm14
	vpcmpgtb k2, xmm15, xmm4
	vpcmpgtb k6, ymm7, ymm6
	vpcmpgtb k3, ymm5, yword [0x3d8]
