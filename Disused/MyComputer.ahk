#SingleInstance Force ;#SingleInstance is implicit in hotkey scripts, but Force switch is not
#NoEnv
SendMode Input

#e::
	;Run explorer.exe /e,/select,c:\
	;Run explorer.exe /e ,{20d04fe0-3aea-1069-a2d8-08002b30309d} ;Win+E opens My Computer, that's the CLSID), /e specifies explorer view
	Run ::{20d04fe0-3aea-1069-a2d8-08002b30309d} ;Win+E opens My Computer, that's the CLSID), /e specifies explorer view
	WinWait My Computer ahk_class CabinetWClass
	;ControlClick X300 Y70 ;Clicks on "Folders" button
	PostMessage, 0x111, 41525, , , ahk_Class CabinetWClass ;equivalent to "Folders" button
return