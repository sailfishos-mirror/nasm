default rel
	vpmadd52huq xmm4, xmm13, xmm9
	vpmadd52huq xmm3, xmm8, xmm7
	vpmadd52huq ymm8, ymm8, ymm10
	vpmadd52huq ymm11, ymm9, ymm15
	vpmadd52huq xmm15, xmm14, oword [0x5a0]
	vpmadd52huq xmm5, xmm4, xmm1
	vpmadd52huq ymm14, ymm11, ymm0
	vpmadd52huq ymm12, ymm1, ymm9
