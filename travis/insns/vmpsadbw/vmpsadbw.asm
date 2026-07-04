default rel
	vmpsadbw xmm3, xmm9, xmm15, 0x9f
	vmpsadbw xmm3, xmm15, 0x9f
	vmpsadbw xmm1, xmm8, xmm5, 0x5e
	vmpsadbw ymm13, ymm4, yword [0x3fb], 0xc
	vmpsadbw ymm13, yword [0x3fb], 0xc
	vmpsadbw ymm11, ymm8, ymm3, 0xc1
	vmpsadbw xmm10, xmm4, oword [0xe92], 0xd4
	vmpsadbw xmm10, xmm1, xmm0, 0xf
	vmpsadbw ymm6, ymm9, ymm1, 0xe9
	vmpsadbw ymm2, ymm8, ymm12, 0xb1
