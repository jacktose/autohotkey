;Auto-Execute
SetStoreCapslockMode, Off   ;makes `Send {CapsLock}` always toggle its state
return

#SingleInstance Force ;#SingleInstance is implicit in hotkey scripts, but Force switch is not
#NoEnv
SendMode Input

$+CapsLock::
    Send {CapsLock}
    if GetKeyState("CapsLock", "T") = 1
        SoundBeep, 1980, 150
    else if GetKeyState("CapsLock", "T") = 0
        SoundBeep, 1020, 150
Return

;+CapsLock::
;    ;alternate method
;    if GetKeyState("CapsLock", "T") = 0
;    {
;        SetCapsLockState, on
;        SoundBeep, 1980, 150
;    }
;    else if GetKeyState("CapsLock", "T") = 1
;    {
;        SetCapsLockState, off
;        SoundBeep, 1020, 150
;    }
;Return

;Turn CapsLock into Ctrl
$CapsLock::LCtrl

;Turn left Ctrl into CapsLock
;$LCtrl::CapsLock
