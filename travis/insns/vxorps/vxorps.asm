default rel
	vxorps xmm14, xmm2, xmm12
	vxorps xmm5, xmm1, xmm8
	vxorps ymm1, ymm15, yword [0xfaf]
	vxorps ymm10, ymm13, yword [0x293]
	vxorps xmm4, xmm1, oword [0x9f0]
	vxorps xmm6, xmm7, xmm10
	vxorps ymm13, ymm0, ymm13
	vxorps ymm9, ymm14, ymm0
