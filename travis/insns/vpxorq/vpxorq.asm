default rel
	vpxorq xmm5, xmm0, xmm15
	vpxorq xmm15, xmm4, xmm3
	vpxorq ymm14, ymm0, ymm4
	vpxorq ymm5, ymm15, yword [0x4d5]
	vpxorq zmm4, zmm9, zword [0xacf]
	vpxorq zmm6, zmm11, zword [0x82d]
