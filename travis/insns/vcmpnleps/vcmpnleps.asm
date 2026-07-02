default rel
	vcmpnleps xmm13, xmm14, oword [0xa1d]
	vcmpnleps xmm2, xmm12, xmm8
	vcmpnleps ymm5, ymm8, ymm12
	vcmpnleps ymm4, ymm13, ymm5
	vcmpnleps k4, xmm3, xmm0
	vcmpnleps k3, xmm2, xmm10
	vcmpnleps k6, ymm10, ymm0
	vcmpnleps k2, ymm3, ymm12
