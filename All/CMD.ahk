;Auto-Execute
EnvGet, USERPROFILE, USERPROFILE	;because of #NoEnv, below
return

#SingleInstance Force ;#SingleInstance is implicit in hotkey scripts, but Force switch is not
SendMode Input
#NoEnv

#c:: ;Win+C switches to or opens command prompt
	IfWinExist C:\WINDOWS\system32\cmd.exe
		IfWinActive C:\WINDOWS\system32\cmd.exe
			Run, %ComSpec% ,%USERPROFILE%
		else
			WinActivate
	else
		Run, %ComSpec% ,%USERPROFILE%
return