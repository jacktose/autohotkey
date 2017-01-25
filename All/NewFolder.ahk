#SingleInstance Force ;#SingleInstance is implicit in hotkey scripts, but Force switch is not
#NoEnv
SendMode Input

#IfWinActive ahk_group Explorer
	^n::Send !2	;creates new folder via file menu (Win10)
	;^n::Send !fwf	;creates new folder via file menu (Win7)
	;^n::Send {AppsKey}fwf	;creates new folder via context menu (Win7) ;buggy, doesn't work if file highlighted
#IfWinActive
