default rel
	vpcmpeqb xmm9, xmm10, xmm0
	vpcmpeqb xmm5, xmm13, oword [0x46d]
	vpcmpeqb ymm14, ymm12, ymm0
	vpcmpeqb ymm10, ymm13, yword [0x161]
	vpcmpeqb k6, xmm4, xmm9
	vpcmpeqb k7, xmm11, xmm13
	vpcmpeqb k5, ymm7, ymm6
	vpcmpeqb k3, ymm0, ymm15
