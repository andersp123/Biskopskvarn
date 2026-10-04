@echo off
cd /d "%~dp0"
where python >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    echo Starting Gulf game on http://localhost:8000
    python -m http.server 8000
) else (
    echo Python is not installed or not on PATH.
    echo Install Python 3 and run: python -m http.server 8000
    pause
)
