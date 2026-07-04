default rel
	vpackssdw xmm11, xmm4, oword [0x39b]
	vpackssdw xmm11, oword [0x39b]
	vpackssdw xmm12, xmm11, xmm10
	vpackssdw ymm10, ymm7, yword [0xaff]
	vpackssdw ymm10, yword [0xaff]
	vpackssdw ymm10, ymm14, ymm6
	vpackssdw xmm0, xmm5, xmm4
	vpackssdw xmm0, xmm4
	vpackssdw xmm1, xmm12, xmm3
	vpackssdw ymm10, ymm12, ymm10
	vpackssdw ymm10, ymm10
	vpackssdw ymm13, ymm0, ymm5
