default rel
	vcmpngt_uspd xmm6, xmm8, oword [0xf28]
	vcmpngt_uspd xmm8, xmm11, xmm7
	vcmpngt_uspd ymm0, ymm9, ymm8
	vcmpngt_uspd ymm7, ymm5, ymm9
	vcmpngt_uspd k5, xmm10, xmm6
	vcmpngt_uspd k2, xmm11, oword [0x688]
	vcmpngt_uspd k4, ymm11, yword [0xc0b]
	vcmpngt_uspd k5, ymm5, ymm11
