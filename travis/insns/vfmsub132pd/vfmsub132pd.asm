default rel
	vfmsub132pd xmm2, xmm15, xmm6
	vfmsub132pd xmm5, xmm4, xmm3
	vfmsub132pd ymm2, ymm10, ymm6
	vfmsub132pd ymm8, ymm5, yword [0x808]
	vfmsub132pd xmm1, xmm15, xmm0
	vfmsub132pd xmm3, xmm13, xmm0
	vfmsub132pd ymm2, ymm11, ymm7
	vfmsub132pd ymm11, ymm3, yword [0x6bb]
