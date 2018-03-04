;///// TEXT REPLACEMENTS - WORK /////
;  # = Windows Key
;  ^ = Control
;  ! = Alt
;  + = Shift

;/// JIRA SNIPPETS  ///
:*:;code::
SendInput, {{}code{}}{Enter}
SendInput, {{}code{}}
return

;/// FRAMEWORK RELOAD ///
^!r::
Send !d
SendInput, http://thecrumb.com?reload=1{enter}
return

;/// SHORTCUTS ///
:*:;cmt::
	FormatTime, TimeString, ShortDate
	SendInput,  %TimeString% - Jim Priest - priest@thecrumb.com
return

:*:;sdate::
	FormatTime, TimeString,, LongDate
	SendInput,  %TimeString%
return