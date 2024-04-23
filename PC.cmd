@echo off
echo Note: You must run this file as administrator
echo 1. Clean PC
echo 2. Fix PC online
echo .
set /p Sel= Select: 
if %Sel%==1 goto :Clean
if %Sel%==2 goto :Fix

:Clean
cls
del /s /q /f "%tmp%"
del /s /q /f "C:\Windows\Temp"
del /s /q /f "C:\Windows\Prefetch"
pause
exit

:Fix
cls
DISM.exe /Online /Cleanup-image /Restorehealth
pause
exit