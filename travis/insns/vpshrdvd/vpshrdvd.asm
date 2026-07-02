default rel
	vpshrdvd xmm14, xmm12, xmm15
	vpshrdvd xmm7, xmm1, xmm14
	vpshrdvd ymm5, ymm9, ymm8
	vpshrdvd ymm9, ymm7, yword [0x2ff]
	vpshrdvd zmm15, zmm11, zmm8
	vpshrdvd zmm5, zmm5, zmm12
