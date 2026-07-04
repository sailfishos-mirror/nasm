default rel
	vpsubb xmm13, xmm4, xmm2
	vpsubb xmm13, xmm2
	vpsubb xmm1, xmm4, xmm8
	vpsubb ymm4, ymm8, ymm10
	vpsubb ymm4, ymm10
	vpsubb ymm14, ymm15, ymm1
	vpsubb xmm8, xmm11, xmm4
	vpsubb xmm8, xmm4
	vpsubb xmm3, xmm0, oword [0xa18]
	vpsubb ymm3, ymm5, ymm0
	vpsubb ymm3, ymm0
	vpsubb ymm7, ymm9, ymm0
