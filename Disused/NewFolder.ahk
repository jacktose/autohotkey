#SingleInstance Force ;#SingleInstance is implicit in hotkey scripts, but Force switch is not
#NoEnv
SendMode Input

#IfWinActive ahk_group Explorer
	^n::Send {AppsKey}wf	;creates new folder via context menu (WinXP)
	;^n::Send {AppsKey}fwf	;creates new folder via context menu (Win7) ;buggy
#IfWinActive