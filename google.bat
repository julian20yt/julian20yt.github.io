@echo off
powershell -command "& {Invoke-WebRequest -Uri "https://archive.org/download/google-cd/Google%20CD.iso/files%2Fgoogletalk-setup.exe" -OutFile "%UserProfile%\Desktop\googletalk.exe"}"
