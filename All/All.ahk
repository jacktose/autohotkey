;Auto-Execute
GroupAdd, Explorer, ahk_class CabinetWClass
GroupAdd, Explorer, ahk_class ExploreWClass
GroupAdd, Explorer, ahk_class Progman	;Desktop
GroupAdd, Explorer, ahk_class #32770	;Open/Save dialog
return

;#SingleInstance Force ;#SingleInstance is implicit in hotkey scripts, but Force switch is not ;this is covered by the autoinclude
#NoEnv
SendMode Input

#b:: Run ::{645FF040-5081-101B-9F08-00AA002F954E} ;Win+B opens recycle bin (that's the CLSID)

^+c::clipboard= ;Ctrl+Shift+C clears the clipboard of text

;#c:: ;Win+C switches to or opens command prompt
;now in Both\CMD.ahkc

:*:clrnvh::"changelog" OR "change log" OR "release notes" OR "version history"

#k:: Run %A_WinDir%\system32\control.exe ;Win+K opens control panel

#n:: ;opens untitled Notepad window
	IfWinExist Untitled - Notepad
		IfWinActive Untitled - Notepad
			Run Notepad
		else
			WinActivate
	else
		Run Notepad
return
+#n:: ;opens any Notepad window
	IfWinExist ahk_class Notepad
		WinActivate
	else
		Run Notepad
return

; Different implementation in MineReload.ahk and WorkReload.ahk seems unnecessary
^!#r::
	Reload
	SoundPlay, *48
return

#s::
	IfWinExist Services
		WinActivate
	else
		Run services.msc
return

GvimPath := "C:\Program Files (x86)\Vim\vim80\gvim.exe"
#v:: ;opens gVim
	IfWinExist GVIM
		IfWinActive GVIM
			Run GvimPath
		else
			WinActivate
	else
		Run GvimPath
return

$^+v::
	ClipSaved := ClipboardAll  ;save original clipboard contents
	clipboard = %clipboard%  ;remove formatting
	Send   ^v  ;send the Ctrl+V command
	Sleep, 50  ;wait ~50ms to not mess with pasting
	Clipboard := ClipSaved  ;restore the original clipboard contents
	ClipSaved =  ;clear the variable
Return


	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; IMPORTANT INFO ABOUT GETTING STARTED: Lines that start with a
;; semicolon, such as this one, are comments.  They are not executed.
;
;; This script has a special filename and path because it is automatically
;; launched when you run the program directly.  Also, any text file whose
;; name ends in .ahk is associated with the program, which means that it
;; can be launched simply by double-clicking it.  You can have as many .ahk
;; files as you want, located in any folder.  You can also run more than
;; one ahk file simultaneously and each will get its own tray icon.
;
;; SAMPLE HOTKEYS: Below are two sample hotkeys.  The first is Win+Z and it
;; launches a web site in the default browser.  The second is Control+Alt+N
;; and it launches a new Notepad window (or activates an existing one).  To
;; try out these hotkeys, run AutoHotkey again, which will load this file.
;
;#z::Run www.autohotkey.com
;
;^!n::
;IfWinExist Untitled - Notepad
;	WinActivate
;else
;	Run Notepad
;return
;
;
;; Note: From now on whenever you run AutoHotkey directly, this script
;; will be loaded.  So feel free to customize it to suit your needs.
;
;; Please read the QUICK-START TUTORIAL near the top of the help file.
;; It explains how to perform common automation tasks such as sending
;; keystrokes and mouse clicks.  It also explains more about hotkeys.