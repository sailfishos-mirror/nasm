default rel
	vcvttps2uqq xmm12, xmm10
	vcvttps2uqq xmm2, qword [0xf84]
	vcvttps2uqq ymm10, xmm2
	vcvttps2uqq ymm7, oword [0x421]
	vcvttps2uqq zmm2, yword [0xdfe]
	vcvttps2uqq zmm3, ymm7
