default rel
	vpsadbw xmm7, xmm2, xmm2
	vpsadbw xmm1, xmm11, xmm15
	vpsadbw ymm14, ymm11, ymm8
	vpsadbw ymm11, ymm9, yword [0x69a]
	vpsadbw zmm2, zmm12, zmm10
	vpsadbw zmm2, zmm3, zmm15
