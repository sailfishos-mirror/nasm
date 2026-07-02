default rel
	vpcmov xmm5, xmm3, xmm9, xmm8
	vpcmov xmm10, xmm15, xmm0, xmm0
	vpcmov ymm7, ymm11, yword [0xec3], ymm5
	vpcmov ymm14, ymm12, yword [0x928], ymm6
	vpcmov xmm12, xmm2, xmm2, xmm0
	vpcmov xmm10, xmm13, xmm6, xmm9
	vpcmov ymm15, ymm5, ymm10, ymm9
	vpcmov ymm15, ymm3, ymm13, ymm6
