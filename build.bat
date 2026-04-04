@echo off
echo Starting Premake...
call "%~dp0\src\external\Premake\premake5.exe" --file="%~dp0\src\premake5.lua" vs2026

pause