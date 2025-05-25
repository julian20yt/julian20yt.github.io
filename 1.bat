@echo off
setlocal

:: Get the user's Documents folder
set "DOCS=%USERPROFILE%\Documents"
set "WALL=%DOCS%\mouth.bmp"

:: Download the image using PowerShell
powershell -Command "Invoke-WebRequest -Uri 'https://file.garden/Z3HtEpAjyGTEZiXW/mouth.bmp' -OutFile '%WALL%'"

:: Set the wallpaper using PowerShell
powershell -Command ^
"$code = '[DllImport(\"user32.dll\")] public static extern bool SystemParametersInfo(int uAction, int uParam, string lpvParam, int fuWinIni);'; ^
$User32 = Add-Type -MemberDefinition $code -Name 'User32' -Namespace 'Win32Functions' -PassThru; ^
$User32::SystemParametersInfo(20, 0, '%WALL%', 3)"

endlocal
