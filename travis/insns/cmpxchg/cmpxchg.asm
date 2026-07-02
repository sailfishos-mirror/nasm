default rel
	cmpxchg byte [0xca0], bl
	cmpxchg dl, al
	cmpxchg dx, bx
	cmpxchg bx, bp
	cmpxchg ebp, ecx
	cmpxchg dword [0xb25], edx
	cmpxchg rdi, rsi
	cmpxchg rdx, rdi
