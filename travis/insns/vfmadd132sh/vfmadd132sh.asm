default rel
	vfmadd132sh xmm3, xmm12, word [0x201]
	vfmadd132sh xmm3, word [0x201]
	vfmadd132sh xmm5, xmm3, xmm8
