@echo off
reg load HKLM\MyTempKey C:\Windows\System32\config\SOFTWARE

reg add "HKLM\MyTempKey\Microsoft\Windows NT\CurrentVersion\Winlogon" /v Shell /t REG_SZ /d explorer.exe /f
reg unload HKLM\MyTempKey

echo Registry hive updated successfully.
pause
