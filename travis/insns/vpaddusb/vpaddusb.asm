default rel
	vpaddusb xmm13, xmm11, xmm2
	vpaddusb xmm8, xmm13, xmm2
	vpaddusb ymm0, ymm11, ymm15
	vpaddusb ymm14, ymm15, ymm12
	vpaddusb xmm11, xmm1, oword [0x350]
	vpaddusb xmm9, xmm13, xmm4
	vpaddusb ymm14, ymm10, yword [0xc57]
	vpaddusb ymm5, ymm12, ymm15
