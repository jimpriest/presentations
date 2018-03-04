;///// TEXT REPLACEMENTS - WORK /////
;  # = Windows Key
;  ^ = Control
;  ! = Alt
;  + = Shift

;/// WORDPRESS SNIPPETS  ///
:*:;code::
SendInput, [sourcecode language="TEXT"]{Enter}
SendInput, [/sourcecode]
return

;/// CFECLIPSE ///
:*:;bug::
SendInput, Can you provide us with more detail on your setup?{Enter}
SendInput, {Enter}
SendInput, http://trac.cfeclipse.org/cfeclipse/wiki/ReportingBugs{Enter}
SendInput, ------------{Enter}
SendInput, When submitting a bug or if you email the mailing list with an issue, please provide as much information as possible:{Enter}
SendInput, {Enter}
SendInput,   * Eclipse version: Help > About Eclipse SDK{Enter}
SendInput,   * CFEclipse version: Help > About Eclipse SDK > Plug-in Details{Enter}
SendInput,   * Java version: From a command line type "java -version"{Enter}
SendInput,   * OS - Windows? OSX? Linux?{Enter}
SendInput,   * Error log information {Enter}
SendInput, ------------{Enter}
return

;/// SIGNATURES ///
	:*:;sig1::
	Send,
	( LTrim
		Thanks,
		Jim
	)
	return

	:*:;sig2::
	Send,
	( LTrim
		--
		Jim Priest - thecrumb.com
		Triangle Area ColdFusion User Group - tacfug.org
		--
		See me at:
		cf.Objective()
		NCDevCon
		--
		Without deviation from the norm, progress is not possible. ~ Frank Zappa
	)
	return

;/// TEXT REPLACEMENTS - SPELLING FIXES ///
	::;pk::
	SendInput, Pecha Kucha
	return

