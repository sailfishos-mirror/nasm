default rel
	vfmsubadd231ph xmm13, xmm1, xmm6
	vfmsubadd231ph xmm15, xmm4, xmm9
	vfmsubadd231ph ymm0, ymm9, yword [0xdec]
	vfmsubadd231ph ymm14, ymm1, ymm13
	vfmsubadd231ph zmm12, zmm1, zmm13
	vfmsubadd231ph zmm5, zmm3, zmm11
