default rel
	vpcmpneqb k4, xmm11, xmm13
	vpcmpneqb k6, xmm3, xmm3
	vpcmpneqb k4, ymm8, ymm13
	vpcmpneqb k3, ymm11, ymm4
	vpcmpneqb k7, zmm7, zmm12
	vpcmpneqb k5, zmm2, zword [0x3f4]
