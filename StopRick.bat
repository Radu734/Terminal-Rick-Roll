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
echo Removing RickTasks In:

timeout /t 5

taskkill /f /im cmd.exe
schtasks /delete /tn "LOL" /f