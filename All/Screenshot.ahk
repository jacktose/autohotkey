;Auto-Execute   ; Makes the auto-include script run this section.
    screenshot_dir := "C:\Users\enneking\Pictures\Screenshots"
    nircmd_path := "C:\Users\enneking\Documents\Programs\nircmd-x64\nircmd.exe"
return

#SingleInstance Force ;#SingleInstance is implicit in hotkey scripts, but Force switch is not
#NoEnv
SendMode Input

~PrintScreen::
    check_dir(screenshot_dir)
    Run, % nircmd_path " savescreenshotfull " screenshot_dir "\Screenshot_" A_Now ".png"
return

~!PrintScreen::
    check_dir(screenshot_dir)
    Run, % nircmd_path " savescreenshotwin " screenshot_dir "\Screenshot_" A_Now ".png"
return

check_dir(dir){
    ; See whether directory exists. If not, create it.
}
