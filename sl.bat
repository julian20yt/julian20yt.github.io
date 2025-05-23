@echo off
title SLIME CHAOS ZONE
color 0a
setlocal enabledelayedexpansion

set "chars=Julian20 Squirmie Linty Pinty Rainu Plick Slimie Messiah Glorpie Trainu Blimpy Bingus Splorbie Weathered"

rem ==== Introduction ====
echo Welcome to the Slime Chaos Zone!
timeout /t 2 >nul
echo Characters detected:
for %%c in (%chars%) do echo - %%c
timeout /t 2 >nul
cls

:mainloop
set /a event=!random! %% 13

if !event!==0 call :Julian20
if !event!==1 call :Squirmie
if !event!==2 call :Linty
if !event!==3 call :Rainu
if !event!==4 call :Slimie
if !event!==5 call :Plick
if !event!==6 call :Messiah
if !event!==7 call :Trainu
if !event!==8 call :Weathered
if !event!==9 call :Bingus
if !event!==10 call :Glorpie
if !event!==11 call :Blimpy
if !event!==12 call :OpenGoogle

timeout /t 2 >nul
goto mainloop

:Julian20
echo Julian20 just slipped into a pile of rainbow slime.
title Julian20's Slime Accident!
goto :eof

:Squirmie
echo Squirmie: "BLORP GLORP!!"
echo Translation: He turned the classroom into a trampoline.
goto :eof

:Linty
echo Linty is crawling on the ceiling, whispering "Fusion time..."
start notepad "FusionInstructions.txt"
goto :eof

:Rainu
echo Rainu just launched 5 tacos at the TV and it turned into Bingus.
echo "We now return to Slimeball Z!"
goto :eof

:Slimie
echo Slimie melted over a DirecTV satellite dish. Reception is now 500% better.
title SLIMIE SIGNAL BOOST MODE
goto :eof

:Plick
echo Plick stuck to 7 objects. He is now a walking vending machine.
start calc
goto :eof

:Messiah
echo Messiah tried to hug Julian20 but got stuck. Now they’re fused into a blob called 'Julessiah.'
goto :eof

:Trainu
echo Trainu had a nightmare. He just ran into Rainu's room screaming "TACO WOLVES!"
goto :eof

:Weathered
echo Weathered: "Slime forecast: 110% chance of sticky. News Without Errors!"
start mspaint
goto :eof

:Bingus
echo Bingus just turned into a working cable box and is broadcasting SlimeTV.
start write
goto :eof

:Glorpie
echo Glorpie is calling the slime police. Someone melted the hallway again.
goto :eof

:Blimpy
echo Blimpy dropped a fish on the principal’s head and blamed Julian20.
echo Principal: "NOT AGAIN!"
goto :eof

:OpenGoogle
echo Splorbie activated the Satellite Beacon. Opening search window...
start iexplore.exe https://www.google.com
goto :eof
