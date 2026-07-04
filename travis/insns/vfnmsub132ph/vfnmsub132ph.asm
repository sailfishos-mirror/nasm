default rel
	vfnmsub132ph xmm10, xmm6, xmm14
	vfnmsub132ph xmm10, xmm14
	vfnmsub132ph xmm15, xmm2, xmm3
	vfnmsub132ph ymm4, ymm9, ymm12
	vfnmsub132ph ymm4, ymm12
	vfnmsub132ph ymm5, ymm6, ymm4
	vfnmsub132ph zmm6, zmm5, zmm15
	vfnmsub132ph zmm6, zmm15
	vfnmsub132ph zmm4, zmm3, zword [0x263]
