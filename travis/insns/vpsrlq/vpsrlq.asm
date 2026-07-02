default rel
	vpsrlq xmm15, xmm11, xmm8
	vpsrlq xmm10, xmm13, oword [0x6db]
	vpsrlq xmm5, xmm3, 0x19
	vpsrlq xmm11, xmm10, 0xce
	vpsrlq ymm10, ymm12, oword [0x557]
	vpsrlq ymm13, ymm8, xmm1
	vpsrlq ymm9, ymm3, 0x3b
	vpsrlq ymm12, ymm10, 0x3b
