default rel
	vfnmaddsd xmm12, xmm3, xmm5, xmm2
	vfnmaddsd xmm12, xmm5, xmm2
	vfnmaddsd xmm7, xmm12, xmm12, xmm5
	vfnmaddsd xmm6, xmm6, xmm2, qword [0xf1c]
	vfnmaddsd xmm6, xmm2, qword [0xf1c]
	vfnmaddsd xmm6, xmm15, xmm7, xmm12
