	.text
target:
	# These xaifet encodings live in reserved long-prefix space but are
	# still 32-bit instructions and should assemble as 4 bytes each.
	aif.fbci.ps fa0, 7
	aif.fbci.pi fa1, 9
	aif.faddi.pi fa2, fa3, -1
	aif.fandi.pi fa4, fa5, 42
	aif.fcmov.ps fa6, fa7, fs0, fs1
