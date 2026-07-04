default rel
	vpackuswb xmm11, xmm6, xmm11
	vpackuswb xmm11, xmm11
	vpackuswb xmm4, xmm4, xmm11
	vpackuswb ymm11, ymm13, ymm14
	vpackuswb ymm11, ymm14
	vpackuswb ymm5, ymm4, ymm1
	vpackuswb xmm5, xmm14, xmm4
	vpackuswb xmm5, xmm4
	vpackuswb xmm0, xmm4, oword [0xe1a]
	vpackuswb ymm9, ymm8, ymm11
	vpackuswb ymm9, ymm11
	vpackuswb ymm12, ymm6, ymm15
