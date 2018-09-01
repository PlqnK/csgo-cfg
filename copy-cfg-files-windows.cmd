@ECHO OFF
SETLOCAL ENABLEEXTENSIONS

SET steam_install_path="%PROGRAMFILES(x86)%\Steam\steamapps\common\Counter-Strike Global Offensive"

XCOPY %~dp0\*.cfg "%steam_install_path%\csgo\cfg"
XCOPY %~dp0\csgo_textmodorel.txt "%steam_install_path%\csgo\resource"

PAUSE
EXIT /B 0
