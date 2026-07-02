default rel
	vpmadd52luq xmm8, xmm1, xmm4
	vpmadd52luq xmm0, xmm5, xmm0
	vpmadd52luq ymm6, ymm14, ymm14
	vpmadd52luq ymm2, ymm3, yword [0x5c3]
	vpmadd52luq xmm6, xmm11, oword [0xe38]
	vpmadd52luq xmm14, xmm5, xmm4
	vpmadd52luq ymm9, ymm4, ymm13
	vpmadd52luq ymm0, ymm11, ymm9
