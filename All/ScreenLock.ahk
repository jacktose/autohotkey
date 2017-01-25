#SingleInstance Force ;#SingleInstance is implicit in hotkey scripts, but Force switch is not
#NoEnv
;#InstallKeybdHook
SendMode Input

$#l:: ;Win+L turns off screen and locks windows
	KeyWait LWin
	KeyWait RWin
	;Run "C:\Documents and Settings\Jack Enneking\My Documents\Computer\Programs\Installed\No Install\nircmd\nircmd.exe" monitor off ;turns off screen
	;Run "C:\Documents and Settings\Jack Enneking\My Documents\Computer\Programs\Installed\No Install\nircmd\nircmd.exe" lockws ;locks Windows
	SendMessage, 0x112, 0xF170, 2,, Program Manager ;turns off screen
	DllCall("LockWorkStation") ;locks Windows
return

+#l:: ;Shift+Win+L turns off screen
	KeyWait LWin
	KeyWait LShift
	KeyWait RWin
	KeyWait RShift
	SendMessage, 0x112, 0xF170, 2,, Program Manager ;turns off screen
return

!#l:: ;Alt+Win+L locks Windows (normally just Win+L)
	;DllCall("LockWorkStation") ;locks Windows
	Send #l
return