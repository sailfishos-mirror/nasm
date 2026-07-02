default rel
	vcvtph2udq xmm13, xmm4
	vcvtph2udq xmm4, xmm5
	vcvtph2udq ymm15, oword [0x7ad]
	vcvtph2udq ymm0, xmm4
	vcvtph2udq zmm5, ymm13
	vcvtph2udq zmm2, yword [0x791]
