default rel
	vcmpfalse_ossd xmm5, xmm4, qword [0xa65]
	vcmpfalse_ossd xmm6, xmm13, qword [0xfb1]
	vcmpfalse_ossd k5, xmm13, qword [0x593]
	vcmpfalse_ossd k1, xmm5, xmm0
