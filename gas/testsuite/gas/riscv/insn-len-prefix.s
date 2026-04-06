	.text
target:
	# These xaifet encodings live in reserved long-prefix space but are
	# still 32-bit instructions and should assemble normally.
	fbci.ps fa0, 7
	fbci.pi fa1, 9
	faddi.pi fa2, fa3, -1
	fandi.pi fa4, fa5, 42
	fcmov.ps fa6, fa7, fs0, fs1
