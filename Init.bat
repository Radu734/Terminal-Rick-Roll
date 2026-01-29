@echo off
:: Check for admin rights
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Requesting administrator privileges...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

echo Running with administrator privileges.

:: ---- ADMIN CODE BELOW ----
echo Attempting to create task...

schtasks /create /sc onlogon /tn "LOL" /tr "wscript.exe \"%~dp0rickroll_hidden.vbs\"" /it /f
schtasks /run /tn "LOL"

if %errorlevel% equ 0 (
    echo [SUCCESS] Task "LOL" created!
) else (
    echo [ERROR] Task creation failed with code: %errorlevel%
)

pause