default rel
	vfcmaddcph xmm6, xmm7, xmm0
	vfcmaddcph xmm6, xmm0
	vfcmaddcph xmm1, xmm3, xmm7
	vfcmaddcph ymm14, ymm10, ymm2
	vfcmaddcph ymm14, ymm2
	vfcmaddcph ymm15, ymm4, yword [0x631]
	vfcmaddcph zmm10, zmm8, zmm1
	vfcmaddcph zmm10, zmm1
	vfcmaddcph zmm2, zmm4, zmm10
