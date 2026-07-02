default rel
	vfmsub213ps xmm4, xmm8, xmm14
	vfmsub213ps xmm14, xmm6, oword [0xd59]
	vfmsub213ps ymm4, ymm5, ymm5
	vfmsub213ps ymm9, ymm4, ymm4
	vfmsub213ps xmm3, xmm1, oword [0x8ec]
	vfmsub213ps xmm4, xmm1, oword [0xf07]
	vfmsub213ps ymm2, ymm9, ymm13
	vfmsub213ps ymm5, ymm2, yword [0xf87]
