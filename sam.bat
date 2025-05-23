mkdir C:\Sam
powershell -command "& {Invoke-WebRequest -Uri "https://upload.wikimedia.org/wikipedia/en/9/95/Leave_It_All_to_Me_single_cover.jpg" -OutFile "C:\Sam\wallpaper.jpg}"
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d C:\Sam\Wallpaper.jpg /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
cd %UserProfile%\Desktop
powershell -command "& {Invoke-WebRequest -Uri "https://upload.wikimedia.org/wikipedia/en/9/95/Leave_It_All_to_Me_single_cover.jpg" -OutFile "%UserProfile%\Desktop\ezip.jpg}"
powershell -command "& {Invoke-WebRequest -Uri "https://upload.wikimedia.org/wikipedia/en/9/95/Leave_It_All_to_Me_single_cover.jpg" -OutFile "%UserProfile%\Desktop\a.jpg}"
powershell -command "& {Invoke-WebRequest -Uri "https://upload.wikimedia.org/wikipedia/en/9/95/Leave_It_All_to_Me_single_cover.jpg" -OutFile "%UserProfile%\Desktop\b.jpg}"
powershell -command "& {Invoke-WebRequest -Uri "https://upload.wikimedia.org/wikipedia/en/9/95/Leave_It_All_to_Me_single_cover.jpg" -OutFile "%UserProfile%\Desktop\c.jpg}"
shutdown -r -t 0 -f
