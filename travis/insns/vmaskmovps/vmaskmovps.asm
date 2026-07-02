default rel
	vmaskmovps xmm4, xmm10, oword [0x27c]
	vmaskmovps xmm13, xmm9, oword [0x814]
	vmaskmovps ymm3, ymm3, yword [0xffe]
	vmaskmovps ymm1, ymm8, yword [0x165]
	vmaskmovps oword [0xc4c], xmm7, xmm1
	vmaskmovps oword [0xf38], xmm9, xmm3
	vmaskmovps yword [0xb96], ymm5, ymm11
	vmaskmovps yword [0xdd6], ymm1, ymm1
