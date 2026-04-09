	# Wrong number of operands
	aif.maskand m0,m1		# too few operands
	aif.maskand m0,m1,m2,m3	# too many operands
	aif.masknot m0			# too few operands
	aif.masknot m0,m1,m2		# too many operands
	aif.maskpopc a0			# too few operands
	aif.maskpopc a0,m1,m2		# too many operands
	aif.fadd.ps ft0,ft1		# too few operands
	aif.fadd.ps ft0,ft1,ft2,ft3	# too many operands
	aif.fmadd.ps ft0,ft1,ft2	# too few operands
	aif.fsqrt.ps ft0		# too few operands
	aif.mova.m.x			# too few operands
	aif.mova.m.x a0,a1		# too many operands

	# Wrong register class: GPR where MPR expected
	aif.maskand a0,m1,m2		# GPR instead of MPR dest
	aif.maskand m0,a0,m2		# GPR instead of MPR src1
	aif.maskand m0,m1,a0		# GPR instead of MPR src2
	aif.masknot a0,m1		# GPR instead of MPR dest
	aif.maskor a0,m1,m2		# GPR instead of MPR dest
	aif.maskxor m0,a0,m2		# GPR instead of MPR src1

	# Wrong register class: MPR where GPR expected
	aif.maskpopc m0,m1		# MPR instead of GPR dest
	aif.bitmixb m0,a1,a2		# MPR instead of GPR
	aif.amoaddl.w m0,a1,0(a2)	# MPR instead of GPR

	# Wrong register class: GPR where FPR expected
	aif.fadd.ps a0,ft1,ft2		# GPR instead of FPR dest
	aif.fadd.ps ft0,a0,ft2		# GPR instead of FPR src1
	aif.fadd.ps ft0,ft1,a0		# GPR instead of FPR src2
	aif.fsqrt.ps a0,ft1		# GPR instead of FPR

	# Wrong register class: FPR where GPR expected
	aif.bitmixb ft0,a1,a2		# FPR instead of GPR
	aif.packb a0,ft0,a2		# FPR instead of GPR

	# Wrong register class: FPR where MPR expected
	aif.feqm.ps ft0,ft1,ft2	# FPR instead of MPR (looks like feq.ps)
	aif.fsetm.pi ft0,ft1		# FPR instead of MPR

	# Out-of-range MPR register (m8 does not exist)
	aif.maskand m8,m1,m2		# MPR register out of range
	aif.masknot m0,m8		# MPR register out of range

	# Out-of-range Xeb immediate (FMOV shift, 0-7)
	aif.fmvs.x.ps a0,ft0,8		# Xeb > 7
	aif.fmvs.x.ps a0,ft0,-1	# Xeb < 0

	# Out-of-range Xef immediate (MOV.M.X / FSWIZZ, 0-255)
	aif.mov.m.x m0,a0,256		# Xef > 255
	aif.mov.m.x m0,a0,-1		# Xef < 0
	aif.fswizz.ps ft0,ft1,256	# Xef > 255

	# Out-of-range XeY immediate (MASKPOPC_RAS, 0-15)
	aif.maskpopc.rast a0,m1,m2,16	# XeY > 15
	aif.maskpopc.rast a0,m1,m2,-1	# XeY < 0

	# Out-of-range shift immediate (< format, 0-31)
	aif.fslli.pi ft0,ft1,32	# shift > 31
	aif.fsrai.pi ft0,ft1,32	# shift > 31
	aif.fsrli.pi ft0,ft1,32	# shift > 31

	# Out-of-range Xeg immediate (graphics downconvert, 0-31)
	aif.fslloi.pi ft0,ft1,ft2,32	# Xeg > 31
