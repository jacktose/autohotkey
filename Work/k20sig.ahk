#NoEnv
SendMode Input

;::ksig::
;	ClipSaved := ClipboardAll    ;save original clipboard contents
;	Clipboard := "Regards,`r`n`r`nJack Enneking`r`n`r`nNetwork Engineer`r`nK-20 Network Operations Center`r`n888-964-5551"
;	Send ^v    ;send the Ctrl+V command
;	Sleep, 50    ;wait ~50ms to not mess with pasting
;	Clipboard := ClipSaved    ;restore the original clipboard contents
;	ClipSaved := ""    ;clear the variable
;Return

::ksig::Regards,{Enter}Jack Enneking{Enter}Network Engineer+{Enter}K-20 Network Operations Center+{Enter}888-964-5551

;::ksig::
;	ClipSaved := ClipboardAll    ;save original clipboard contents
;	Clipboard := "Regards,"
;	Send ^v    ;send the Ctrl+V command
;	Sleep, 50    ;wait ~50ms to not mess with pasting
;    Send {Enter}
;    Clipboard := "Jack Enneking"
;	Send ^v    ;send the Ctrl+V command
;	Sleep, 50    ;wait ~50ms to not mess with pasting
;    Send {Enter}
;    Clipboard := "Network Engineer`r`nK-20 Network Operations Center`r`n888-964-5551"
;	Send ^v    ;send the Ctrl+V command
;	Sleep, 50    ;wait ~50ms to not mess with pasting
;	Clipboard := ClipSaved    ;restore the original clipboard contents
;	ClipSaved := ""    ;clear the variable
;Return
