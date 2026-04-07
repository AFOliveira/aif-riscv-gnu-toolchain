	# xaifet mask instructions
	aif.maskand m0,m1,m2
	aif.maskand m7,m7,m7
	aif.masknot m3,m4
	aif.masknot m0,m7
	aif.maskor m5,m6,m7
	aif.maskor m0,m0,m0
	aif.maskpopc a0,m1
	aif.maskpopc a5,m7
	aif.maskpopc.rast a0,m1,m2,3
	aif.maskpopc.rast a5,m7,m0,15
	aif.maskpopcz a0,m1
	aif.maskpopcz a5,m7
	aif.maskxor m0,m1,m2
	aif.maskxor m7,m7,m7
	aif.mov.m.x m0,a0,0x0
	aif.mov.m.x m7,a5,0xff
	aif.mova.m.x a0
	aif.mova.m.x a5
	aif.mova.x.m a0
	aif.mova.x.m a5

	# xaifet packed-single load and store
	aif.flq2 ft0,0(a0)
	aif.flq2 ft1,100(a1)
	aif.flw.ps ft0,0(a0)
	aif.flw.ps ft2,200(a2)
	aif.fsq2 ft3,0(a0)
	aif.fsq2 ft4,100(a1)
	aif.fsw.ps ft5,0(a0)
	aif.fsw.ps ft6,200(a2)

	# xaifet packed-single gather and scatter
	aif.fg32b.ps ft0,a0(a1)
	aif.fg32h.ps ft1,a1(a2)
	aif.fg32w.ps ft2,a2(a3)
	aif.fgb.ps ft3,ft4(a4)
	aif.fgh.ps ft5,ft6(a5)
	aif.fgw.ps ft7,fs0(a6)
	aif.fsc32b.ps ft0,a0(a1)
	aif.fsc32h.ps ft1,a1(a2)
	aif.fsc32w.ps ft2,a2(a3)
	aif.fscb.ps ft3,ft4(a4)
	aif.fsch.ps ft5,ft6(a5)
	aif.fscw.ps ft7,fs0(a6)

	# xaifet packed-single broadcast
	aif.fbc.ps ft0,0(a0)
	aif.fbc.ps ft1,100(a1)
	aif.fbci.ps ft0,1
	aif.fbci.ps ft2,0xfff
	aif.fbcx.ps ft0,a0
	aif.fbcx.ps ft3,a5

	# xaifet packed-single computational
	aif.fadd.ps ft0,ft1,ft2
	aif.fdiv.ps ft3,ft4,ft5
	aif.fmadd.ps ft0,ft1,ft2,ft3
	aif.fmax.ps ft0,ft1,ft2
	aif.fmin.ps ft0,ft1,ft2
	aif.fmsub.ps ft4,ft5,ft6,ft7
	aif.fmul.ps ft6,ft7,fs0
	aif.fnmadd.ps ft0,ft1,ft2,ft3
	aif.fnmsub.ps ft4,ft5,ft6,ft7
	aif.fsqrt.ps ft0,ft1
	aif.fsub.ps ft3,ft4,ft5

	# xaifet packed-single convert and move
	aif.fcmov.ps ft0,ft1,ft2,ft3
	aif.fcmovm.ps ft0,ft1,ft2
	aif.fcvt.ps.pw ft0,ft1
	aif.fcvt.ps.pwu ft2,ft3
	aif.fcvt.pw.ps ft4,ft5
	aif.fcvt.pwu.ps ft6,ft7
	aif.fmvs.x.ps a0,ft0,0
	aif.fmvs.x.ps a5,ft7,7
	aif.fmvz.x.ps a0,ft0,0
	aif.fmvz.x.ps a5,ft7,7
	aif.fsgnj.ps ft0,ft1,ft2
	aif.fsgnjn.ps ft3,ft4,ft5
	aif.fsgnjx.ps ft6,ft7,fs0
	aif.fswizz.ps ft0,ft1,0x0
	aif.fswizz.ps ft2,ft3,0xff

	# xaifet packed-single compare
	aif.fclass.ps ft0,ft1
	aif.feq.ps ft0,ft1,ft2
	aif.feqm.ps m0,ft1,ft2
	aif.feqm.ps m7,ft5,ft6
	aif.fle.ps ft0,ft1,ft2
	aif.flem.ps m0,ft1,ft2
	aif.flem.ps m7,ft5,ft6
	aif.flt.ps ft0,ft1,ft2
	aif.fltm.ps m0,ft1,ft2
	aif.fltm.ps m7,ft5,ft6

	# xaifet packed-single graphics upconvert
	aif.fcvt.ps.f10 ft0,ft1
	aif.fcvt.ps.f11 ft2,ft3
	aif.fcvt.ps.f16 ft4,ft5
	aif.fcvt.ps.sn16 ft6,ft7
	aif.fcvt.ps.sn8 fs0,fs1
	aif.fcvt.ps.un10 fs2,fs3
	aif.fcvt.ps.un16 fs4,fs5
	aif.fcvt.ps.un2 fs6,fs7
	aif.fcvt.ps.un24 fs8,fs9
	aif.fcvt.ps.un8 fs10,fs11

	# xaifet packed-single graphics downconvert
	aif.fcvt.f10.ps ft0,ft1
	aif.fcvt.f11.ps ft2,ft3
	aif.fcvt.f16.ps ft4,ft5
	aif.fcvt.sn16.ps ft6,ft7
	aif.fcvt.sn8.ps fs0,fs1
	aif.fcvt.un10.ps fs2,fs3
	aif.fcvt.un16.ps fs4,fs5
	aif.fcvt.un2.ps fs6,fs7
	aif.fcvt.un24.ps fs8,fs9
	aif.fcvt.un8.ps fs10,fs11

	# xaifet packed-single graphics other
	aif.cubeface.ps ft0,ft1,ft2
	aif.cubefaceidx.ps ft3,ft4,ft5
	aif.cubesgnsc.ps ft6,ft7,fs0
	aif.cubesgntc.ps fs1,fs2,fs3
	aif.fcvt.ps.rast ft0,ft1
	aif.fcvt.rast.ps ft2,ft3
	aif.fexp.ps ft0,ft1
	aif.ffrc.ps ft2,ft3
	aif.flog.ps ft4,ft5
	aif.frcp.ps ft6,ft7
	aif.frcp_fix.rast ft0,ft1,ft2
	aif.fround.ps ft0,ft1
	aif.frsq.ps fs0,fs1
	aif.fsin.ps fs2,fs3

	# xaifet packed-integer instructions
	aif.fadd.pi ft0,ft1,ft2
	aif.faddi.pi ft0,ft1,-512
	aif.faddi.pi ft2,ft3,511
	aif.fand.pi ft0,ft1,ft2
	aif.fandi.pi ft0,ft1,-512
	aif.fandi.pi ft2,ft3,511
	aif.fbci.pi ft0,1
	aif.fbci.pi ft2,0xfff
	aif.fdiv.pi ft0,ft1,ft2
	aif.fdivu.pi ft3,ft4,ft5
	aif.feq.pi ft0,ft1,ft2
	aif.fle.pi ft0,ft1,ft2
	aif.flt.pi ft0,ft1,ft2
	aif.fltm.pi m0,ft1,ft2
	aif.fltm.pi m7,ft5,ft6
	aif.fltu.pi ft0,ft1,ft2
	aif.fsetm.pi m0,ft1
	aif.fsetm.pi m7,ft5
	aif.fmax.pi ft0,ft1,ft2
	aif.fmaxu.pi ft3,ft4,ft5
	aif.fmin.pi ft0,ft1,ft2
	aif.fminu.pi ft3,ft4,ft5
	aif.fmul.pi ft0,ft1,ft2
	aif.fmulh.pi ft3,ft4,ft5
	aif.fmulhu.pi ft6,ft7,fs0
	aif.fnot.pi ft0,ft1
	aif.for.pi ft0,ft1,ft2
	aif.fpackrepb.pi ft0,ft1
	aif.fpackreph.pi ft2,ft3
	aif.frem.pi ft0,ft1,ft2
	aif.fremu.pi ft3,ft4,ft5
	aif.fsat8.pi ft0,ft1
	aif.fsatu8.pi ft2,ft3
	aif.fsll.pi ft0,ft1,ft2
	aif.fslli.pi ft0,ft1,0
	aif.fslli.pi ft2,ft3,31
	aif.fslloi.pi ft0,ft1,ft2,0
	aif.fslloi.pi ft3,ft4,ft5,31
	aif.fsra.pi ft0,ft1,ft2
	aif.fsrai.pi ft0,ft1,0
	aif.fsrai.pi ft2,ft3,31
	aif.fsrl.pi ft0,ft1,ft2
	aif.fsrli.pi ft0,ft1,0
	aif.fsrli.pi ft2,ft3,31
	aif.fsub.pi ft0,ft1,ft2
	aif.fxor.pi ft0,ft1,ft2

	# xaifet render target support instructions
	aif.bitmixb a0,a1,a2
	aif.bitmixb a5,a6,a7
	aif.packb a0,a1,a2
	aif.packb a5,a6,a7

	# xaifet scalar atomic instructions
	aif.amoaddg.d a0,a1,0(a2)
	aif.amoaddg.w a0,a1,0(a2)
	aif.amoaddl.d a0,a1,0(a2)
	aif.amoaddl.w a0,a1,0(a2)
	aif.amoandg.d a0,a1,0(a2)
	aif.amoandg.w a0,a1,0(a2)
	aif.amoandl.d a0,a1,0(a2)
	aif.amoandl.w a0,a1,0(a2)
	aif.amomaxg.d a0,a1,0(a2)
	aif.amomaxg.w a0,a1,0(a2)
	aif.amomaxl.d a0,a1,0(a2)
	aif.amomaxl.w a0,a1,0(a2)
	aif.amomaxug.d a0,a1,0(a2)
	aif.amomaxug.w a0,a1,0(a2)
	aif.amomaxul.d a0,a1,0(a2)
	aif.amomaxul.w a0,a1,0(a2)
	aif.amoming.d a0,a1,0(a2)
	aif.amoming.w a0,a1,0(a2)
	aif.amominl.d a0,a1,0(a2)
	aif.amominl.w a0,a1,0(a2)
	aif.amominug.d a0,a1,0(a2)
	aif.amominug.w a0,a1,0(a2)
	aif.amominul.d a0,a1,0(a2)
	aif.amominul.w a0,a1,0(a2)
	aif.amoorg.d a0,a1,0(a2)
	aif.amoorg.w a0,a1,0(a2)
	aif.amoorl.d a0,a1,0(a2)
	aif.amoorl.w a0,a1,0(a2)
	aif.amocmpswapg.d a0,a1,0(a2)
	aif.amocmpswapg.w a0,a1,0(a2)
	aif.amocmpswapl.d a0,a1,0(a2)
	aif.amocmpswapl.w a0,a1,0(a2)
	aif.amoswapg.d a0,a1,0(a2)
	aif.amoswapg.w a0,a1,0(a2)
	aif.amoswapl.d a0,a1,0(a2)
	aif.amoswapl.w a0,a1,0(a2)
	aif.amoxorg.d a0,a1,0(a2)
	aif.amoxorg.w a0,a1,0(a2)
	aif.amoxorl.d a0,a1,0(a2)
	aif.amoxorl.w a0,a1,0(a2)

	# xaifet packed atomic instructions
	aif.famoaddg.pi ft0,ft1(a0)
	aif.famoaddl.pi ft0,ft1(a0)
	aif.famoandg.pi ft0,ft1(a0)
	aif.famoandl.pi ft0,ft1(a0)
	aif.famomaxg.pi ft0,ft1(a0)
	aif.famomaxg.ps ft0,ft1(a0)
	aif.famomaxl.pi ft0,ft1(a0)
	aif.famomaxl.ps ft0,ft1(a0)
	aif.famomaxug.pi ft0,ft1(a0)
	aif.famomaxul.pi ft0,ft1(a0)
	aif.famoming.pi ft0,ft1(a0)
	aif.famoming.ps ft0,ft1(a0)
	aif.famominl.pi ft0,ft1(a0)
	aif.famominl.ps ft0,ft1(a0)
	aif.famominug.pi ft0,ft1(a0)
	aif.famominul.pi ft0,ft1(a0)
	aif.famoorg.pi ft0,ft1(a0)
	aif.famoorl.pi ft0,ft1(a0)
	aif.famoswapg.pi ft0,ft1(a0)
	aif.famoswapl.pi ft0,ft1(a0)
	aif.famoxorg.pi ft0,ft1(a0)
	aif.famoxorl.pi ft0,ft1(a0)

	# xaifet packed memory operations to coherent memory
	aif.fgbg.ps ft0,ft1(a0)
	aif.fgbl.ps ft0,ft1(a0)
	aif.fghg.ps ft0,ft1(a0)
	aif.fghl.ps ft0,ft1(a0)
	aif.fgwg.ps ft0,ft1(a0)
	aif.fgwl.ps ft0,ft1(a0)
	aif.flwg.ps ft0,0(a0)
	aif.flwl.ps ft0,0(a0)
	aif.fscbg.ps ft0,ft1(a0)
	aif.fscbl.ps ft0,ft1(a0)
	aif.fschg.ps ft0,ft1(a0)
	aif.fschl.ps ft0,ft1(a0)
	aif.fscwg.ps ft0,ft1(a0)
	aif.fscwl.ps ft0,ft1(a0)
	aif.fswg.ps ft0,0(a0)
	aif.fswl.ps ft0,0(a0)

	# xaifet scalar memory operations to coherent memory
	aif.sbg a0,0(a1)
	aif.sbl a0,0(a1)
	aif.shg a0,0(a1)
	aif.shl a0,0(a1)
