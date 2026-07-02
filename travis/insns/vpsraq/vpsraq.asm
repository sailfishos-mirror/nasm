default rel
	vpsraq xmm11, xmm8, xmm6
	vpsraq xmm0, xmm5, oword [0x7d3]
	vpsraq ymm14, ymm14, xmm8
	vpsraq ymm12, ymm0, oword [0x669]
	vpsraq zmm9, zmm4, oword [0x28f]
	vpsraq zmm15, zmm4, xmm12
	vpsraq xmm15, xmm1, 0xf5
	vpsraq xmm2, xmm4, 0xc6
