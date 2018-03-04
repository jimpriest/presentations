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

;; Map Microsoft 4000 Keyboard Special Keys
;; Register HID calls for Microsoft Keyboard
OnMessage(0x00FF, "InputMessage")
RegisterHIDDevice(12, 1)
Return
; // END

;/// COLDFUSION RELATED SHORTCUTS
#Include %A_ScriptDir%\work\coldfusion.ahk

;/// FOR MICROSOFT ERGO KEYBRD FUNC KEYS
#Include %A_ScriptDir%\work\mskeyboard.ahk

;/// DIARY POPUP TIMER
#Include %A_ScriptDir%\work\timer.ahk

;/// WORK TEXT REPLACE
#Include %A_ScriptDir%\work\work_txtreplace.ahk

;/// GLOBAL TEXT REPLACE
#Include %A_ScriptDir%\txtreplace.ahk

;; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;; Do not edit below this line !!!
;; ========================================

Mem2Hex( pointer, len )
{
 A_FI := A_FormatInteger
 SetFormat, Integer, Hex
 Loop, %len%  {
                   Hex := *Pointer+0
                   StringReplace, Hex, Hex, 0x, 0x0
                   StringRight Hex, Hex, 2
                   hexDump := hexDump . hex
                   Pointer ++
                 }
 SetFormat, Integer, %A_FI%
 StringUpper, hexDump, hexDump
Return hexDump
}

; Keyboards are always Usage 6, Usage Page 1, Mice are Usage 2, Usage Page 1,
; HID devices specify their top level collection in the info block
RegisterHIDDevice(UsagePage,Usage)
{
; local RawDevice,HWND
 RIDEV_INPUTSINK := 0x00000100
 DetectHiddenWindows, on
 HWND := WinExist("ahk_class AutoHotkey ahk_pid " DllCall("GetCurrentProcessId"))
 DetectHiddenWindows, off

 VarSetCapacity(RawDevice, 12)
    NumPut(UsagePage, RawDevice, 0, "UShort")
    NumPut(Usage, RawDevice, 2, "UShort")
    NumPut(RIDEV_INPUTSINK, RawDevice, 4)
    NumPut(HWND, RawDevice, 8)

    Res := DllCall("RegisterRawInputDevices", "UInt", &RawDevice, UInt, 1, UInt, 12)
    if (Res = 0)
       MsgBox, Failed to register for HID Device
}
InputMessage(wParam, lParam, msg, hwnd)
{
    RID_INPUT   := 0x10000003
 RIM_TYPEHID := 2
  SizeofRidDeviceInfo := 32
  RIDI_DEVICEINFO := 0x2000000b


   DllCall("GetRawInputData", UInt, lParam, UInt, RID_INPUT, UInt, 0, "UInt *", Size, UInt, 16)
   VarSetCapacity(Buffer, Size)
   DllCall("GetRawInputData", UInt, lParam, UInt, RID_INPUT, UInt, &Buffer, "UInt *", Size, UInt, 16)

   Type := NumGet(Buffer, 0 * 4)
   Size := NumGet(Buffer, 1 * 4)
   Handle := NumGet(Buffer, 2 * 4)

   VarSetCapacity(Info, SizeofRidDeviceInfo)
   NumPut(SizeofRidDeviceInfo, Info, 0)
   Length := SizeofRidDeviceInfo

   DllCall("GetRawInputDeviceInfo", UInt, Handle, UInt, RIDI_DEVICEINFO, UInt, &Info, "UInt *", SizeofRidDeviceInfo)

   VenderID := NumGet(Info, 4 * 2)
   Product := NumGet(Info, 4 * 3)

;   tooltip %VenderID% %Product%


   if (Type = RIM_TYPEHID)
   {
      SizeHid := NumGet(Buffer, (16 + 0))
      InputCount := NumGet(Buffer, (16 + 4))
      Loop %InputCount% {
         Addr := &Buffer + 24 + ((A_Index - 1) * SizeHid)
         BAddr := &Buffer
         Input := Mem2Hex(Addr, SizeHid)
         If (IsLabel(Input))
   {
    Gosub, %Input%
   }

      }
   }
}