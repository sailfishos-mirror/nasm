default rel
	vpternlogq xmm15, xmm4, xmm10, 0x55
	vpternlogq xmm2, xmm3, xmm1, 0x3b
	vpternlogq ymm13, ymm12, ymm15, 0xe5
	vpternlogq ymm6, ymm2, yword [0xa42], 0x48
	vpternlogq zmm14, zmm1, zmm9, 0x86
	vpternlogq zmm12, zmm13, zword [0x15a], 0x29
