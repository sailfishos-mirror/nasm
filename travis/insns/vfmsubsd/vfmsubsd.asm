default rel
	vfmsubsd xmm6, xmm3, xmm7, xmm13
	vfmsubsd xmm6, xmm7, xmm13
	vfmsubsd xmm0, xmm4, xmm6, xmm2
	vfmsubsd xmm7, xmm8, xmm6, xmm11
	vfmsubsd xmm7, xmm6, xmm11
	vfmsubsd xmm13, xmm10, xmm0, qword [0x8f6]
