default rel
	vxorpd xmm12, xmm13, xmm4
	vxorpd xmm4, xmm11, oword [0x255]
	vxorpd ymm14, ymm14, ymm9
	vxorpd ymm2, ymm5, ymm13
	vxorpd xmm7, xmm7, xmm10
	vxorpd xmm1, xmm1, xmm15
	vxorpd ymm4, ymm14, ymm7
	vxorpd ymm4, ymm6, ymm5
