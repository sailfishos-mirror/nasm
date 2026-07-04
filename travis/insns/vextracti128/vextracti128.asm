default rel
	vextracti128 xmm3, ymm5, 0x49
	vextracti128 xmm1, ymm0, 0xc7
	vextracti128 xmm15, ymm15, 0x63
	vextracti128 oword [eax+1], ymm5, 0xdc
	vextracti128 oword [eax+64], ymm0, 0xe3
