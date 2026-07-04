default rel
	vfmaddsubpd xmm0, xmm15, oword [0x813], xmm4
	vfmaddsubpd xmm0, oword [0x813], xmm4
	vfmaddsubpd xmm4, xmm9, xmm3, xmm3
	vfmaddsubpd ymm12, ymm13, ymm13, ymm11
	vfmaddsubpd ymm12, ymm13, ymm11
	vfmaddsubpd ymm5, ymm5, ymm10, ymm0
	vfmaddsubpd xmm0, xmm13, xmm5, oword [0x795]
	vfmaddsubpd xmm0, xmm5, oword [0x795]
	vfmaddsubpd xmm15, xmm5, xmm11, xmm15
	vfmaddsubpd ymm11, ymm4, ymm11, ymm8
	vfmaddsubpd ymm11, ymm11, ymm8
	vfmaddsubpd ymm4, ymm0, ymm5, ymm5
