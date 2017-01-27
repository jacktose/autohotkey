;Auto-Execute   ; Makes the auto-include script run this section.
    EnvGet, user_dir, USERPROFILE
    screenshot_dir := user_dir . "\Pictures\Screenshots"
    nircmd_path := A_MyDocuments . "\Programs\nircmd-x64\nircmd.exe"
    IfNotExist, % nircmd_path
        Msgbox, 48, %A_ScriptName%: NirCmd not found
            , NirCmd not found:`n%nircmd_path%`n`nScreenshots will not be saved., 30
return

#SingleInstance Force ;#SingleInstance is implicit in hotkey scripts, but Force switch is not
#NoEnv
SendMode Input

~PrintScreen::
    ; Alt+PrintScreen saves image of full screen automatically.
    check_dir(screenshot_dir)
    Run, % nircmd_path " savescreenshotfull " ss_filename(screenshot_dir)
return

~!PrintScreen::
    ; Alt+PrintScreen saves image of window automatically.
    ; For some reason, ~! is showing the alt tooltips when using this on Explorer windows. Regular AAlt+PrintScreen in Windows does not do that.
    check_dir(screenshot_dir)
    Run, % nircmd_path " savescreenshotwin " ss_filename(screenshot_dir)
return

check_dir(dir){
    ; See whether directory exists. If not, create it.
    IfNotExist, % dir
        FileCreateDir, % dir
}

ss_filename(dir){
    ; Returns the full path of the screenshot file with current time.
    FormatTime, time, %A_Now%, yyyy-MM-dd HH.mm.ss
    filename := """" dir "\Screenshot " time ".png"""
    return, filename
}
