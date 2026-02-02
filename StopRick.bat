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

echo If the background startup task is removed, you will get errors:
echo ```````````````````````````````````````````````````````````````

schtasks /delete /tn "LOL" /f
schtasks /query /tn "LOL"

pause

taskkill /f /im cmd.exe
