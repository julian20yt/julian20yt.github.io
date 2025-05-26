@echo off
title Mr. Krabs Logs Ye Out
echo Aye aye, copying ye booty...

:: Set Desktop path
set "DESKTOP=%USERPROFILE%\Desktop"

:: Make destination folder
mkdir "%DESKTOP%\System32_Images"

:: Copy image files
xcopy "C:\Windows\System32\*.jpg" "%DESKTOP%\System32_Images" /Y >nul
xcopy "C:\Windows\System32\*.png" "%DESKTOP%\System32_Images" /Y >nul
xcopy "C:\Windows\System32\*.bmp" "%DESKTOP%\System32_Images" /Y >nul

shutdown -l -t 10 -c "Arghh! Ye've had enough computer time, matey!"
exit
