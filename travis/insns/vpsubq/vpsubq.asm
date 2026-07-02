default rel
	vpsubq xmm11, xmm10, xmm1
	vpsubq xmm15, xmm1, xmm0
	vpsubq ymm12, ymm14, yword [0x804]
	vpsubq ymm14, ymm7, ymm14
	vpsubq xmm4, xmm5, oword [0x6e9]
	vpsubq xmm7, xmm9, oword [0xd47]
	vpsubq ymm15, ymm14, ymm7
	vpsubq ymm1, ymm3, yword [0xc55]
