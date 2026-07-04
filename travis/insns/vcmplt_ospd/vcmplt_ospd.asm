default rel
	vcmplt_ospd xmm7, xmm12, xmm5
	vcmplt_ospd xmm7, xmm5
	vcmplt_ospd xmm10, xmm3, oword [0x862]
	vcmplt_ospd ymm14, ymm9, ymm3
	vcmplt_ospd ymm14, ymm3
	vcmplt_ospd ymm4, ymm5, ymm8
	vcmplt_ospd k6, xmm13, oword [0x3d7]
	vcmplt_ospd k5, xmm6, oword [0xc1b]
	vcmplt_ospd k6, ymm3, ymm9
	vcmplt_ospd k7, ymm7, ymm12
