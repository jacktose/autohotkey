#SingleInstance Force
#NoEnv
SendMode Input
DetectHiddenWindows On

sc122::
	IfWinExist ahk_class iTunes
		ControlSend, ahk_parent, {space}, iTunes ahk_class iTunes
	IfWinExist ahk_class Songbird
		ControlSend, ahk_parent, {space} ;, Songbird ahk_class Songbird
sc110::
	IfWinExist ahk_class iTunes
		ControlSend, ahk_parent, {left}, iTunes ahk_class iTunes
	IfWinExist ahk_class Songbird
		ControlSend, ahk_parent, ^{left} ;, Songbird ahk_class Songbird
sc119::
	IfWinExist ahk_class iTunes
		ControlSend, ahk_parent, {right}, iTunes ahk_class iTunes
	IfWinExist ahk_class Songbird
		ControlSend, ahk_parent, ^{right} ;, Songbird ahk_class Songbird