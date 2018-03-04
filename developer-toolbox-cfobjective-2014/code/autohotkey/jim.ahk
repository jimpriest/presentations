; AutoHotkey Version: 1.x
; Language:       English
; Platform:       Win9x/NT/Win7
; Author:         Jim Priest (priest@thecrumb.com)
;
; // KEY SHORTCUTS //
;  # = Windows Key
;  ^ = Control
;  ! = Alt
;  + = Shift
;
; // SCRIPT FUNCTION //
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
; // END

;/// JIM TEXT REPLACEMENTS
#Include %A_ScriptDir%\jim\jim_txtreplace.ahk

;/// GLOBAL TEXT REPLACE
#Include %A_ScriptDir%\txtreplace.ahk