default rel
	vsubph xmm12, xmm4, xmm4
	vsubph xmm2, xmm1, xmm12
	vsubph ymm15, ymm1, ymm10
	vsubph ymm12, ymm10, ymm2
	vsubph zmm12, zmm14, zword [0x939]
	vsubph zmm10, zmm9, zmm0
