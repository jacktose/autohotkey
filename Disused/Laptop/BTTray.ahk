#SingleInstance Force ;#SingleInstance is implicit in hotkey scripts, but Force switch is not
#NoEnv
SendMode Input

^!#t::WinShow BTTrayMainWindow ahk_class AfxWnd42
;WinClose BTTrayMainWindow ahk_class AfxWnd42