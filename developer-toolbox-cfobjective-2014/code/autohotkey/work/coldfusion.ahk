;///// COLDFUSION / CODING /////
;  # = Windows Key
;  ^ = Control
;  ! = Alt
;  + = Shift

;-- Wrap selected text in space % space ---
^!s::
  AutoTrim, off
  clipboard =
  send ^c
  clipwait, 1
  If ErrorLevel = 0
  {
    clipboard =  %A_Space%%clipboard%%A_Space%
    send ^v
  }
return

;-- Wrap selected text in javaCast string ---
^!j::
  clipboard =
  send ^c
  clipwait, 1
  If ErrorLevel = 0
  {
    clipboard = javaCast("string", %clipboard%())
    send ^v
  }
return

;-- Wrap selected text in pound/hash ## ---
^3::
  clipboard =
  send ^c
  clipwait, 1
  If ErrorLevel = 0
  {
    clipboard = #%clipboard%#
    send ^v
  }
return

;-- Wrap selected text in a href ---
!a::
  clipboard =
  send ^c
  clipwait, 1
  If ErrorLevel = 0
  {
    clipboard = <a href="" title="%clipboard%">%clipboard%</a>
    send ^v
  }
return

;-- Wrap selected text in UPPER() ---
!u::
  clipboard =
  send ^c
  clipwait, 1
  If ErrorLevel = 0
  {
    clipboard = UPPER(%clipboard%)
    send ^v
  }
return

;-- Wrap selected text in Ucase() ---
^u::
  clipboard =
  send ^c
  clipwait, 1
  If ErrorLevel = 0
  {
    clipboard = Ucase(%clipboard%)
    send ^v
  }
return

;-- Wrap selected text in Trim() ---
!t::
  clipboard =
  send ^c
  clipwait, 1
  If ErrorLevel = 0
  {
    clipboard = Trim(%clipboard%)
    send ^v
  }
return

;-- Wrap selected text in QueryParam (will first strip ' or " or #) ---
!q::
  clipboard =
  send ^c
  clipwait, 1
  If ErrorLevel = 0
  StringReplace, clipboard, clipboard, ', , All
  StringReplace, clipboard, clipboard, ", , All
  StringReplace, clipboard, clipboard, #, , All
  {
    clipboard = <cfqueryparam value="#%clipboard%#" cfsqltype="cf_sql_varchar">
    send ^v
  }
return

;-- Wrap selected text in QueryParam (will first strip ' or ") ---
#q::
  clipboard =
  send ^c
  clipwait, 1
  If ErrorLevel = 0
  StringReplace, clipboard, clipboard, ', , All
  StringReplace, clipboard, clipboard, ", , All
  StringReplace, clipboard, clipboard, #, , All
  {
    clipboard = <cfqueryparam value="#Val(%clipboard%)#" cfsqltype="cf_sql_numeric">
    send ^v
  }
return

;-- Wrap selected text in CFDump/CFAbort ---
SC03B::
  clipboard =
  send ^c
  clipwait, 1
  If ErrorLevel = 0
  {
    clipboard = <!--- CFDUMP: Debugging --->`n<cfdump var="#%clipboard%#" label="Dump ( %clipboard% )" abort="true" format="html">`n
    send ^v
  }
return

;-- Wrap selected text in CFDump/CFAbort (cfscript) ---
!SC03B::
  clipboard =
  send ^c
  clipwait, 1
  If ErrorLevel = 0
  {
    clipboard = // CFDUMP: Debugging`nwriteDump(var="#%clipboard%#",  output="", label="Dump ( %clipboard% )", abort="true", format="html");`n
    send ^v
  }
return