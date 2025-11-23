@echo off
setlocal enabledelayedexpansion

:prompt_loop
cls

:: Display the current prompt (initially set to "Enter your command:")
echo CoolCMD
echo And no, this is not affiliated with the Roblox c00lkid incident.

:: Prompt the user for input
set /p userInput=CoolCMD:

:: Check the user's input and adjust the prompt accordingly
if "!userInput!"=="devmode" (
    goto hackerint
) else (
    echo "!userInput! is not a valid command."
)

if /I "!userInput!" EQU "shutdown -s" (
    shutdown -s
)

if /I "!userInput!" EQU "shutdown -r" (
    shutdown -r
)

if /I "!userInput!" EQU "shutdown -i" (
    shutdown -i
)

if /I "!userInput!" EQU "shutdown -a" (
    shutdown -a
)

if /I "!userInput!" EQU "shutdown -h" (
    shutdown -h
)

if /I "!userInput!" EQU "shutdown -l" (
    shutdown -l
)

if /I "!userInput!" EQU "help" (
    echo ALL COMMANDS
    echo help - You're looking at it
    echo shutdown -l - Locks the computer
    echo shutdown -h - Hibernates the computer
    echo shutdown -a - Aborts a shutdown
    echo shutdown -i - Interactive Shutdown GUI
    echo shutdown -s - Shuts the computer down
    echo shutdown -r - Restarts the computer
)


:hackerint
cls
color A
set /p userInput=devmode:

if /I "!userInput!" EQU "getserver -r" (
    tree
    tree
    DRIVERQUERY
    echo.
    echo Scanning Vulnerable Servers
    timeout 5
    echo.
    color 0C
    echo WARNING: YOUR CREDIDENTIALS HAVE BEEN LEAKED.
    start cmd /k ftp 192.168.110.27:21
    pause
    goto hackerint
)

if /I "!userInput!" EQU "exit" (
    goto prompt_loop
)

if /I "!userInput!" EQU "destroy cooline" (
    color 0C
    echo ERROR: ACCESS DENIED
    color A
)

if /I "!userInput!" EQU "SXCgtlogon" (
    timeout 3
    goto SXCgt
)

:SXCgt
cls
color B
set /p userInput=SXCgtMode:

if /I "!userInput!" EQU "destroy cooline" (
echo Loading...
tree
dir /b /s > 2024-09-05T21_33_52_275Z-debug-0.txt
goto kernalpanic

:kernalpanic
set /p userInput=ERROR:
) else (
    echo "FATAL ERROR AT 000000XB0242. PLEASE REINSTALL COOLINE"
cls
color 0C
echo FATAL SYSTEM ERROR
timeout -1