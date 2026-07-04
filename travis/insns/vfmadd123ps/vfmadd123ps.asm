default rel
	vfmadd123ps xmm2, xmm4, xmm3
	vfmadd123ps xmm1, xmm6, xmm2
	vfmadd123ps ymm5, ymm1, ymm5
	vfmadd123ps ymm4, ymm2, ymm2
	vfmadd123ps xmm15, xmm9, xmm9
	vfmadd123ps ymm15, ymm8, ymm12
	vfmadd123ps xmm3, xmm5, oword [eax+1]
	vfmadd123ps xmm3, xmm0, oword [eax+64]
	vfmadd123ps ymm2, ymm2, yword [eax+1]
	vfmadd123ps ymm4, ymm0, yword [eax+64]
