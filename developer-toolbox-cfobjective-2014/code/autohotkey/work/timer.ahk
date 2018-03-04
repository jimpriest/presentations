;///// TIMER APP /////
;  # = Windows Key
;  ^ = Control
;  ! = Alt
;  + = Shift

;//// TIMER APP ////
;--------------------------------
SetTimer, #a,900000
#a::
  ; Show the Input Box to the user.
  inputbox, text, Diary,,,300,100
  ; Format the time-stamp.
  ; FormatTime, CurrentDateTime,, dddd (MM/dd)
  FormatTime, CurrentDateTime,, dddd
  ; Write this data to the diary.txt file.
  if (StrLen(text) > 0) {
  fileappend ** %CurrentDateTime% %text%`n, D:\diary.txt
  }
return