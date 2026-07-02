default rel
	vcvtbiasph2bf8s xmm7, xmm8, xmm8
	vcvtbiasph2bf8s xmm9, xmm0, xmm14
	vcvtbiasph2bf8s xmm13, ymm14, yword [0x101]
	vcvtbiasph2bf8s xmm4, ymm9, yword [0xe2d]
	vcvtbiasph2bf8s ymm14, zmm12, zmm15
	vcvtbiasph2bf8s ymm9, zmm4, zword [0xea4]
