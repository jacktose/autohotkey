#SingleInstance Force ;#SingleInstance is implicit in hotkey scripts, but Force switch is not
#NoEnv
SendMode Input

#IfWinActive ahk_class Chrome_WidgetWin_0
	^b:: Send ^+b	;opens bookmark bar
	^+b::	;opens bookmark manager
	;	Send ^t chrome://bookmarks{Enter}
		ControlClick X1130 Y60 ;Clicks on Wrench button
		Send b
	Return
#IfWinActive