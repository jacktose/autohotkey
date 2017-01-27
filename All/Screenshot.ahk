#SingleInstance Force ;#SingleInstance is implicit in hotkey scripts, but Force switch is not
#NoEnv
SendMode Input
screenshot_dir := "C:\Users\enneking\Pictures\Screenshots"
nircmd_path := "C:\Users\enneking\Documents\Programs\nircmd-x64\nircmd.exe"
SetWorkingDir, screenshot_dir


$PrintScreen::
    send {PrintScreen}
    Run, C:\Users\enneking\Documents\Programs\nircmd-x64\nircmd.exe savescreenshotfull C:\Users\enneking\Pictures\Screenshots\Screenshot_%A_Now%.png
    ;Run, nircmd_path "savescreenshot" screenshot_dir . "\Screenshot_" . A_Now . ".png"
    ;Run, %nircmd_path% savescreenshot %screenshot_dir%\Screenshot_%A_Now%.png
return

$!PrintScreen::
    send !{PrintScreen}
    Run, C:\Users\enneking\Documents\Programs\nircmd-x64\nircmd.exe savescreenshotwin C:\Users\enneking\Pictures\Screenshots\Screenshot_%A_Now%.png
    ;Run, nircmd_path savescreenshotwin screenshot_dir . "\Screenshot_" . A_Now . ".png"
return
