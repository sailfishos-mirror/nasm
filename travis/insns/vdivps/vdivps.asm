default rel
	vdivps xmm5, xmm1, xmm12
	vdivps xmm5, xmm12
	vdivps xmm5, xmm15, oword [0x9a6]
	vdivps ymm1, ymm3, ymm5
	vdivps ymm1, ymm5
	vdivps ymm6, ymm0, yword [0x5da]
	vdivps xmm8, xmm10, xmm7
	vdivps xmm8, xmm7
	vdivps xmm1, xmm4, xmm4
	vdivps ymm2, ymm3, ymm0
	vdivps ymm2, ymm0
	vdivps ymm3, ymm5, ymm7
