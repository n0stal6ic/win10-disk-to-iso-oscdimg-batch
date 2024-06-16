:: ===============================================================================
:: ======================= THIS APP/GUI WAS DEVELOPED BY =========================
:: ===============================================================================
:: n0stal6ic#0001 -   Discord
:: nostalgic.cc   -   Website
:: n0stal6ic      -   Anything Else
:: ===============================================================================
:: ================= THIS APP USES 3RD PARTY LIBRARIES TO OPERATE ================
:: ===============================================================================
:: oscdimg     -   https://learn.microsoft.com/en-us/windows-hardware/manufacture/desktop/oscdimg-command-line-options
:: ===============================================================================
:: ================ THE FULL CODE STARTS BELOW, I HOPE YOU ENJOY!! ===============
:: ===============================================================================

@echo off
title ISO Image Creator
mode con cols=40 lines=3
color B
cls
goto definevars

:definevars
set START=oscdimg.exe
set location=%userprofile%\Desktop\
if "%~1"=="" (
    goto drive
) else (
    set source=%~1
    goto name
)

:drive
mode con cols=50 lines=5
color 0a
echo Enter drive letter or path.
echo (Eg. "D:\" or "C:\MyFolder")
echo.
set /p source="> "
cls
if not exist %source% (
    echo Invalid drive or path.
    timeout 2 >nul
    goto promptDrive
)

:name
mode con cols=50 lines=5
color 0a
echo Enter export name.
echo (Eg. "MyIso")
echo.
set /p name="> "
cls
goto startrip

:startrip
cls
mode con cols=80 lines=30
echo Creating ISO image... (This may take a while)
%START% -n -d -m -c %source% %location%%name%.iso
if errorlevel 1 (
    echo Failed to create image.
    timeout 5 >nul
    goto exit
)
goto finished

:finished
mode con cols=15 lines=2
cls
color 0a
echo Done!
timeout 2 >nul
goto exit

:exit
exit
