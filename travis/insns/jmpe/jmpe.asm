default rel
.L1:
	jmpe .L1
	jmpe .L1
	jmpe .L1
	jmpe .L1
	jmpe .L1
	jmpe .L1
	jmpe .L1
	jmpe .L1
	jmpe .L1
	jmpe .L1
	jmpe word [eax+1]
	jmpe word [eax+64]
	jmpe dword [eax+1]
	jmpe dword [eax+64]
	jmpe qword [eax+1]
	jmpe qword [eax+64]
	jmpe word [eax+1]
	jmpe word [eax+64]
	jmpe dword [eax+1]
	jmpe dword [eax+64]
	jmpe qword [eax+1]
	jmpe qword [eax+64]
