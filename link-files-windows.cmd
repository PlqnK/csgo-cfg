@ECHO OFF
SETLOCAL ENABLEEXTENSIONS

:: Check if the script is running in an interactive session
SET interactive=0
ECHO %CMDCMDLINE% | FINDSTR /L %COMSPEC% >NUL 2>&1
IF %ERRORLEVEL% == 0 SET interactive=1

FOR %I IN (%~dp0\*.cfg) DO MKLINK %I "C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\csgo\cfg\"

:: If the script is running in an interactive session ask the user to press a key before closing the window
IF "%interactive%"=="0" PAUSE
EXIT /B 0
