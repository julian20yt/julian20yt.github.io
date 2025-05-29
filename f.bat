@echo off
REM Load the SOFTWARE hive from the Windows installation (C:\Windows\System32\config\SOFTWARE)
reg load HKLM\TempSOFTWARE C:\Windows\System32\config\SOFTWARE

REM Set Shell to explorer.exe in the loaded hive
reg add "HKLM\TempSOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v Shell /t REG_SZ /d explorer.exe /f

REM Optionally set CmdLine (not usually needed)
REM reg add "HKLM\TempSOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v CmdLine /t REG_SZ /d explorer.exe /f

REM Unload the hive
reg unload HKLM\TempSOFTWARE

echo Setup registry modified to use explorer.exe as shell.
pause
