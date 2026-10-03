@echo off
setlocal
cd /d "%~dp0"
if not exist web mkdir web
copy /Y "..\web\index.html" "web\index.html" >nul
call npm install
if errorlevel 1 exit /b 1
call npm run dist
if errorlevel 1 exit /b 1
echo Build complete: dist\WAKELESS-win32-x64
pause
