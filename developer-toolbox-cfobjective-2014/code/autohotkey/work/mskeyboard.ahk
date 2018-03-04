; // SCRIPTS FOR MICROSOFT ERGO KEYBOARD //
;  # = Windows Key
;  ^ = Control
;  ! = Alt
;  + = Shift
;; ========================================
;; Back / Forwad Keys (below space bar)
;; ========================================

; Back Button
sc169::           ;Zoom In
    Send, #{PgUp}
    return

; Forward Button
sc16A::           ;Zoom Out
    Send, #{PgDn}
    return

;; ========================================
;; Zoom slider
;; ========================================

; Zoom down
012E020000010000:
Send, ^-
return

; Zoom up
012D020000010000:
Send, ^=
return

; All up
0100000000010000:
return


;; ========================================
;; Five function buttons / My Favorites
;; ========================================

 ; Favorites 1
 0100000000050000:
 ; MsgBox Favorites 1
 run "C:\Program Files\Sublime Text 3\sublime_text.exe"
 return

 ; Favorites 2
 0100000000090000:
 ; MsgBox Favorites 2
 run "C:\Program Files\ConEmu\ConEmu64.exe"
 return

 ; Favorites 3
 0100000000110000:
 ; MsgBox Favorites 3
 run "C:\temp\diary.txt"
 return

 ; Favorites 4
 0100000000210000:
 ; MsgBox Favorites 4
 run "C:\Program Files (x86)\Microsoft SQL Server\110\Tools\Binn\ManagementStudio\Ssms.exe"
 return

 ; Favorites 5
 0100000000410000:
 Send, secretpassword
 return

; My Favorites
0182010000000000:
MsgBox My Favorites
return

;; ========================================
;; Number pad buttons = ( )  <-
;; ========================================

;numpad(
010000B600010000:
Send (
return

;numpad)
010000B700010000:
Send )
return

;numpad=
0100006700010000:
run "D:\Dropbox\scripts\batch\railo_restart - Shortcut.lnk"
return

;; ========================================
;; FN Function keys
;; ========================================

;/// MICROSOFT FUNCTION KEYS  ///
;-------------------------------
; SC03B::
; MsgBox, %A_ThisHotKey%- F1 .. was pressed.
; return
;-------------------------------
; SC03C::
; MsgBox, %A_ThisHotKey%- F2 .. was pressed.
; return
;-------------------------------
;SC03D::
;MsgBox, %A_ThisHotKey%- F3 .. was pressed.
;return
;------------------------------
;SC03E::
;MsgBox, %A_ThisHotKey%- F4 .. was pressed.
;return

;F5------------------------------
;SC03F::
;don't program this - used for window refresh

;F6 -------------------
;SC040::
;MsgBox, %A_ThisHotKey%- F6 .. was pressed.
;return

;F7 ----------------
;SC041::
;MsgBox, %A_ThisHotKey%- F7 .. was pressed.
;return

;F8 ----------------
;SC042::
;MsgBox, %A_ThisHotKey%- F8 .. was pressed.
;return

;F9 -----------
;SC043::
;MsgBox, %A_ThisHotKey%- F9 .. was pressed.
;return

;------------------------------
;SC044::
;MsgBox, %A_ThisHotKey%- F10 .. was pressed.
;return
;------------------------------
;SC057::
;MsgBox, %A_ThisHotKey%- F11 .. was pressed.
;return
;------------------------------
;SC058::
;MsgBox, %A_ThisHotKey%- F12 .. was pressed.
;return
;------------------------------