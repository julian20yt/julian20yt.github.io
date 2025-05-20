@echo off
REM Set wallpaper to the provided image URL
set "image_url=https://static.wikitide.net/avidwiki/3/36/Amazon_Originals_%282013%29_A.png"
set "wallpaper_path=%TEMP%\amazon_wallpaper.png"

powershell -Command "Invoke-WebRequest -Uri '%image_url%' -OutFile '%wallpaper_path%'"

REM Set the downloaded image as the desktop wallpaper (current user, Windows 10/11)
reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%wallpaper_path%" /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters

REM Show a message and schedule shutdown in 120 seconds (2 minutes)
msg * "AMAZON-IFIED THE PC. Shutting down in 2 minutes..."
shutdown /s /t 120 /c "AMAZON-IFIED THE PC"
