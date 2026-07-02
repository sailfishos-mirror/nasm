default rel
	vfmsubadd231ps xmm15, xmm14, xmm9
	vfmsubadd231ps xmm5, xmm4, xmm13
	vfmsubadd231ps ymm1, ymm5, yword [0x2d6]
	vfmsubadd231ps ymm0, ymm13, ymm3
	vfmsubadd231ps xmm3, xmm10, xmm12
	vfmsubadd231ps xmm5, xmm11, oword [0x374]
	vfmsubadd231ps ymm6, ymm1, yword [0x5c3]
	vfmsubadd231ps ymm6, ymm3, ymm15
