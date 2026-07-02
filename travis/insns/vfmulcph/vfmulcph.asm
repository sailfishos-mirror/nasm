default rel
	vfmulcph xmm8, xmm9, xmm5
	vfmulcph xmm5, xmm9, oword [0xefb]
	vfmulcph ymm11, ymm12, yword [0xe1b]
	vfmulcph ymm10, ymm13, ymm10
	vfmulcph zmm4, zmm11, zmm5
	vfmulcph zmm8, zmm6, zmm9
