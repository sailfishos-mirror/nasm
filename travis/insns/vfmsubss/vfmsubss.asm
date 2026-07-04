default rel
	vfmsubss xmm7, xmm9, xmm8, xmm2
	vfmsubss xmm7, xmm8, xmm2
	vfmsubss xmm9, xmm3, xmm1, xmm6
	vfmsubss xmm4, xmm11, xmm3, xmm6
	vfmsubss xmm4, xmm3, xmm6
	vfmsubss xmm7, xmm2, xmm13, dword [0x11f]
