default rel
	vpsrld xmm12, xmm11, xmm6
	vpsrld xmm12, xmm6
	vpsrld xmm6, xmm14, oword [0x349]
	vpsrld xmm3, xmm0, 0x80
	vpsrld xmm3, 0x80
	vpsrld xmm10, xmm15, 0xa7
	vpsrld ymm15, ymm15, xmm2
	vpsrld ymm15, xmm2
	vpsrld ymm12, ymm11, xmm12
	vpsrld ymm3, ymm11, 0xbd
	vpsrld ymm3, 0xbd
	vpsrld ymm1, ymm12, 0x5d
