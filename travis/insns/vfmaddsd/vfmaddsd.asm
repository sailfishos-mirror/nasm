default rel
	vfmaddsd xmm5, xmm6, qword [0xded], xmm14
	vfmaddsd xmm5, qword [0xded], xmm14
	vfmaddsd xmm5, xmm6, qword [0x49d], xmm2
	vfmaddsd xmm9, xmm4, xmm12, xmm6
	vfmaddsd xmm9, xmm12, xmm6
	vfmaddsd xmm4, xmm9, xmm6, qword [0x457]
