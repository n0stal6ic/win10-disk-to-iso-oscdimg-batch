:: Wrapper written by n0stal6ic#0001
:: Enjoy! :)
@echo off
title Disc to ISO by n0stal6ic#0001
mode con cols=40 lines=3
color B
cls
:definevars
set START=oscdimg.exe
set batfiledir=%cd%
set letter=D:\
set location=%userprofile%\Desktop\
:start
mode con cols=50 lines=5
color 0a
echo Enter Drive Letter.
echo (Eg. "D:\")
echo.
set /p letter="> "
cls
timeout 1 >nul
:location
mode con cols=50 lines=5
color 0a
echo Enter Export Name.
echo (Eg. "MyIso")
echo.
set /p name="> "
cls
timeout 1 >nul
:startrip
cls
mode con cols=80 lines=10
%START% -n -d -m %letter% %location%%name%.iso
:finished
mode con cols=15 lines=2
cls
color 0a
echo Done!
timeout 2 >nul
goto exit
:exit
exit