default rel
	vpsubd xmm8, xmm4, oword [0xbf2]
	vpsubd xmm8, oword [0xbf2]
	vpsubd xmm4, xmm8, xmm7
	vpsubd ymm8, ymm14, yword [0x396]
	vpsubd ymm8, yword [0x396]
	vpsubd ymm10, ymm10, ymm8
	vpsubd xmm14, xmm10, xmm13
	vpsubd xmm14, xmm13
	vpsubd xmm1, xmm1, xmm13
	vpsubd ymm3, ymm2, ymm1
	vpsubd ymm3, ymm1
	vpsubd ymm5, ymm5, ymm0
