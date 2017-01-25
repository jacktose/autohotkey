#SingleInstance Force ;#SingleInstance is implicit in hotkey scripts, but Force switch is not
#NoEnv
SendMode Input

#IfWinActive ahk_class ConsoleWindowClass
	^V::
		SendInput {Raw}%clipboard%
	return
#IfWinActive