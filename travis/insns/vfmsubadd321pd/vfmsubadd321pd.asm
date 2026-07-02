default rel
	vfmsubadd321pd xmm3, xmm0, xmm7
	vfmsubadd321pd xmm12, xmm6, oword [0x14b]
	vfmsubadd321pd ymm6, ymm3, ymm7
	vfmsubadd321pd ymm3, ymm14, ymm6
