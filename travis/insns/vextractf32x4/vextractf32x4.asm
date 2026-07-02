default rel
	vextractf32x4 xmm14, ymm3, 0x3e
	vextractf32x4 xmm1, ymm14, 0x29
	vextractf32x4 xmm0, zmm8, 0x58
	vextractf32x4 xmm12, zmm15, 0x66
	vextractf32x4 oword [0x550], ymm4, 0x54
	vextractf32x4 oword [0xde3], ymm2, 0xdf
	vextractf32x4 oword [0x95c], zmm8, 0x75
	vextractf32x4 oword [0xea8], zmm3, 0x8b
