default rel
	vpblendmd xmm14, xmm1, xmm14
	vpblendmd xmm5, xmm7, xmm4
	vpblendmd ymm6, ymm4, ymm7
	vpblendmd ymm12, ymm10, yword [0x86a]
	vpblendmd zmm12, zmm1, zword [0xd5b]
	vpblendmd zmm5, zmm2, zmm13
