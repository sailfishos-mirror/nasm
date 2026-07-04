default rel
	vcvtusi2sd xmm12, xmm15, dword [0xdbb]
	vcvtusi2sd xmm12, dword [0xdbb]
	vcvtusi2sd xmm5, xmm12, ebx
	vcvtusi2sd xmm1, xmm11, rsi
	vcvtusi2sd xmm1, rsi
	vcvtusi2sd xmm11, xmm5, rbp
