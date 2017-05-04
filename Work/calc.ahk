;Auto-Execute
return

#SingleInstance Force ;#SingleInstance is implicit in hotkey scripts, but Force switch is not
SendMode Input
#NoEnv
SetTitleMatchMode, 3 ;A window's title must exactly match WinTitle to be a match.

;title Calculator
;ahk_class ApplicationFrameWindow
;ahk_exe ApplicationFrameHost.exe

#Numpad0:: ;Win+0 switches to or opens calculator
    ;SplashImage, 1:, BMY0, , #0
	IfWinExist, Calculator, Calculator
    {
        ;SplashImage, 2:, BMY50, , WinExist Calculator
		IfWinActive, Calculator, Calculator
        {
            ;SplashImage, 3:, BMY100, , WinActive Calculator
			Run calc.exe
		} else {
            ;SplashImage, 4:, BMY150, , NOT WinActive Calculator
			WinActivate
        }
	} else {
        ;SplashImage, 5:, BMY200, , NOT WinExist Calculator
        Run calc.exe
    }
    ;SplashImage, 6:, BMY250, , Finish
    ;Sleep 4000
    ;SplashImage, 1:, Off
    ;SplashImage, 2:, Off
    ;SplashImage, 3:, Off
    ;SplashImage, 4:, Off
    ;SplashImage, 5:, Off
    ;SplashImage, 6:, Off
return
