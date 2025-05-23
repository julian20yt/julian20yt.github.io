@echo off
:: Batch script to create user accounts based on slime characters with no password

:: List of slime users
setlocal enabledelayedexpansion
set users=Squirmie Splorbie Glorpie Blobby Slimie Linty Pinty Jellian Rainu Blimpy Trainu Lizzy Marina Messiah Emerald Weathered Plick Slick Stickee Gilight Tark Clasher Fidelity

echo Creating user accounts with no password...

for %%u in (%users%) do (
    net user %%u "" /add
    net localgroup Users %%u /add
    echo Created user: %%u with no password

    :: Optional note for profile picture
    echo To set a profile picture for %%u manually, download:
    echo https://yt3.googleusercontent.com/a/default-user=s100-c-k-c0x00ffffff-no-rj
    echo And apply it via user settings or domain policy if available.
)

echo All users created with no passwords.
exit
