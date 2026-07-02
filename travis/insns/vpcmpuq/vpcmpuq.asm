default rel
	vpcmpuq k3, xmm10, xmm10, 0xb9
	vpcmpuq k1, xmm3, oword [0x900], 0x60
	vpcmpuq k3, ymm11, ymm2, 0x63
	vpcmpuq k4, ymm11, yword [0xb82], 0x65
	vpcmpuq k7, zmm2, zmm3, 0x35
	vpcmpuq k3, zmm11, zmm13, 0x36
