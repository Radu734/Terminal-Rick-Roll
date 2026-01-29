@echo off
setlocal EnableDelayedExpansion

:loop

set /a pick=%RANDOM% %% 2

if !pick! EQU 0 (
    cmd.exe /c start cmd.exe /k "curl ascii.live/rick" >nul 2>&1
) else (
    cmd.exe /c start cmd.exe /k "curl parrot.live" >nul 2>&1
)

timeout /t 60 /nobreak >nul

goto loop
