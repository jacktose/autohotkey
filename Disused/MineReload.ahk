#SingleInstance Force ;#SingleInstance is implicit in hotkey scripts, but Force switch is not
#NoEnv
SendMode Input

^!#r::
	SoundPlay, *48
	Run C:\Documents and Settings\Jack Enneking\My Documents\My Scripts\AutoHotkey\Mine.ahk
return