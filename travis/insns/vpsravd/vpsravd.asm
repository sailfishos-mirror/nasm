default rel
	vpsravd xmm3, xmm11, xmm1
	vpsravd xmm3, xmm1
	vpsravd xmm12, xmm2, xmm1
	vpsravd ymm4, ymm15, ymm3
	vpsravd ymm4, ymm3
	vpsravd ymm10, ymm3, ymm0
	vpsravd xmm3, xmm4, xmm12
	vpsravd xmm3, xmm12
	vpsravd xmm15, xmm8, oword [0xb64]
	vpsravd ymm8, ymm1, ymm5
	vpsravd ymm8, ymm5
	vpsravd ymm4, ymm2, ymm0
