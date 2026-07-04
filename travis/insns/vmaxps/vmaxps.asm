default rel
	vmaxps xmm2, xmm0, xmm3
	vmaxps xmm2, xmm3
	vmaxps xmm7, xmm13, xmm7
	vmaxps ymm1, ymm11, ymm3
	vmaxps ymm1, ymm3
	vmaxps ymm9, ymm1, yword [0x53a]
	vmaxps xmm5, xmm0, xmm1
	vmaxps xmm5, xmm1
	vmaxps xmm0, xmm14, xmm14
	vmaxps ymm6, ymm11, ymm6
	vmaxps ymm6, ymm6
	vmaxps ymm0, ymm10, yword [0x5a2]
