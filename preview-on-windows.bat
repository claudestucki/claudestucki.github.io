@echo off
REM Double-click this file to preview your site locally with working videos.

cd /d "%~dp0"
echo Starting local preview server at http://localhost:8000
echo Your site will open in your browser.
echo Press Ctrl+C in this window to stop the server when you're done.
echo.

REM Open browser after a short delay
start "" cmd /c "timeout /t 1 >nul && start http://localhost:8000"

REM Try Python 3 first
python -m http.server 8000
if %errorlevel% neq 0 (
    echo.
    echo Python is not installed. Install it from python.org
    pause
)
