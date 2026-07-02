default rel
	cfcmovne bp, di
	cfcmovne ax, si
	cfcmovne ebp, ecx
	cfcmovne dword [0xfcc], ebp
	cfcmovne rdx, rcx
	cfcmovne rbp, rbp
	cfcmovne di, bx
	cfcmovne si, bx
