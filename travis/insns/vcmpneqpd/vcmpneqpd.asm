default rel
	vcmpneqpd xmm3, xmm10, xmm1
	vcmpneqpd xmm3, xmm1
	vcmpneqpd xmm3, xmm14, oword [0x161]
	vcmpneqpd ymm10, ymm8, ymm3
	vcmpneqpd ymm10, ymm3
	vcmpneqpd ymm8, ymm3, ymm6
	vcmpneqpd k3, xmm14, oword [0x703]
	vcmpneqpd k2, xmm1, xmm13
	vcmpneqpd k2, ymm10, ymm5
	vcmpneqpd k4, ymm13, yword [0x9db]
