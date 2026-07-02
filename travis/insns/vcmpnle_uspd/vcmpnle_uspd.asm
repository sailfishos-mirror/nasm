default rel
	vcmpnle_uspd xmm12, xmm9, oword [0x14a]
	vcmpnle_uspd xmm7, xmm10, xmm10
	vcmpnle_uspd ymm13, ymm7, ymm0
	vcmpnle_uspd ymm6, ymm1, yword [0xe7c]
	vcmpnle_uspd k1, xmm5, xmm3
	vcmpnle_uspd k5, xmm7, xmm7
	vcmpnle_uspd k6, ymm6, ymm11
	vcmpnle_uspd k7, ymm6, yword [0x78d]
