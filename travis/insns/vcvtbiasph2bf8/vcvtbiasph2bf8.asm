default rel
	vcvtbiasph2bf8 xmm15, xmm9, oword [0x450]
	vcvtbiasph2bf8 xmm10, xmm14, xmm9
	vcvtbiasph2bf8 xmm0, ymm12, ymm2
	vcvtbiasph2bf8 xmm13, ymm2, yword [0x5f8]
	vcvtbiasph2bf8 ymm8, zmm14, zword [0xdbe]
	vcvtbiasph2bf8 ymm3, zmm2, zmm1
