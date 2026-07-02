default rel
	vfmsubadd213ps xmm0, xmm3, oword [0x6f1]
	vfmsubadd213ps xmm3, xmm0, xmm15
	vfmsubadd213ps ymm2, ymm14, ymm12
	vfmsubadd213ps ymm1, ymm15, ymm11
	vfmsubadd213ps xmm9, xmm5, xmm4
	vfmsubadd213ps xmm5, xmm14, oword [0xaa9]
	vfmsubadd213ps ymm0, ymm8, ymm15
	vfmsubadd213ps ymm2, ymm7, yword [0xaef]
