default rel
	crc32 ebx, byte [0x645]
	crc32 eax, cl
	crc32 ebx, ax
	crc32 ebx, cx
	crc32 eax, edx
	crc32 edx, ebp
	crc32 ebx, qword [0x6f0]
	crc32 ebx, rsi
