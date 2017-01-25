#IfWinActive ahk_group Explorer
	~F2::
		Gosub, AnalyzeRename
	return
	+F2::Send {F2}
#IfWinActive

AnalyzeRename:
	OldClipboard = %Clipboard%
	sleep 25 ;originally 150, try increasing a bit if it unselects whole name
	Send, ^c
	StringGetPos,ExtensionPos, Clipboard,.,R
	if (ExtensionPos != -1)
		{
		Position := StrLen(Clipboard) - ExtensionPos
		Send, +{Left %Position%}
		}
	;Msgbox, Went back %Position% spaces to get to %clipboard%'s extension at %ExtensionPosition%
	Clipboard = %OldClipboard%
	return