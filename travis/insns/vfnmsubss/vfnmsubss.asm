default rel
	vfnmsubss xmm4, xmm2, xmm3, xmm2
	vfnmsubss xmm4, xmm3, xmm2
	vfnmsubss xmm12, xmm12, dword [0x4e5], xmm4
	vfnmsubss xmm10, xmm7, xmm9, xmm6
	vfnmsubss xmm10, xmm9, xmm6
	vfnmsubss xmm5, xmm2, xmm11, dword [0x7e8]
