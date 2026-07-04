default rel
	vpdpwssd xmm7, xmm10, oword [0xd33]
	vpdpwssd xmm10, xmm7, xmm5
	vpdpwssd ymm6, ymm10, ymm1
	vpdpwssd ymm11, ymm10, ymm2
	vpdpwssd xmm1, xmm14, xmm0
	vpdpwssd xmm1, xmm0
	vpdpwssd xmm10, xmm14, oword [0xc78]
	vpdpwssd ymm14, ymm4, yword [0xd0d]
	vpdpwssd ymm14, yword [0xd0d]
	vpdpwssd ymm14, ymm15, ymm10
