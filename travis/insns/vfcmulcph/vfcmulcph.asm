default rel
	vfcmulcph xmm13, xmm6, xmm7
	vfcmulcph xmm10, xmm1, xmm5
	vfcmulcph ymm10, ymm2, yword [0xe77]
	vfcmulcph ymm3, ymm12, ymm10
	vfcmulcph zmm6, zmm7, zword [0x1aa]
	vfcmulcph zmm12, zmm10, zmm9
