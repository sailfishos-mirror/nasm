default rel
	vpminub xmm13, xmm13, xmm5
	vpminub xmm13, xmm5
	vpminub xmm7, xmm3, xmm4
	vpminub ymm1, ymm9, yword [0x507]
	vpminub ymm1, yword [0x507]
	vpminub ymm8, ymm3, ymm1
	vpminub xmm4, xmm1, xmm2
	vpminub xmm4, xmm2
	vpminub xmm9, xmm15, xmm9
	vpminub ymm14, ymm4, ymm11
	vpminub ymm14, ymm11
	vpminub ymm15, ymm14, ymm10
