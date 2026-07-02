default rel
	vcmpneq_oqps xmm12, xmm6, xmm4
	vcmpneq_oqps xmm5, xmm6, oword [0xd29]
	vcmpneq_oqps ymm8, ymm2, ymm1
	vcmpneq_oqps ymm10, ymm13, ymm14
	vcmpneq_oqps k4, xmm13, oword [0x97a]
	vcmpneq_oqps k1, xmm1, oword [0x420]
	vcmpneq_oqps k2, ymm8, ymm13
	vcmpneq_oqps k1, ymm2, ymm14
