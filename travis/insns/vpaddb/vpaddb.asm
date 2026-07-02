default rel
	vpaddb xmm2, xmm8, xmm0
	vpaddb xmm6, xmm9, xmm8
	vpaddb ymm12, ymm15, ymm11
	vpaddb ymm7, ymm6, ymm5
	vpaddb xmm5, xmm14, oword [0x48b]
	vpaddb xmm0, xmm10, xmm10
	vpaddb ymm9, ymm0, ymm8
	vpaddb ymm1, ymm12, ymm4
