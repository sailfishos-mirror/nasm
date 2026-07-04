default rel
	vcmplt_osps xmm5, xmm5, xmm0
	vcmplt_osps xmm5, xmm0
	vcmplt_osps xmm11, xmm8, xmm6
	vcmplt_osps ymm11, ymm10, ymm1
	vcmplt_osps ymm11, ymm1
	vcmplt_osps ymm8, ymm6, ymm10
	vcmplt_osps k3, xmm15, xmm6
	vcmplt_osps k2, xmm4, xmm2
	vcmplt_osps k1, ymm13, ymm2
	vcmplt_osps k7, ymm3, yword [0x5f8]
