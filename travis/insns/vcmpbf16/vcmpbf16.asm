default rel
	vcmpbf16 k4, xmm5, xmm9, 0x8b
	vcmpbf16 k5, xmm14, oword [0x30f], 0x28
	vcmpbf16 k1, ymm7, ymm1, 0x19
	vcmpbf16 k4, ymm8, yword [0x992], 0xd5
	vcmpbf16 k7, zmm6, zmm7, 0x7f
	vcmpbf16 k3, zmm1, zmm3, 0xf5
