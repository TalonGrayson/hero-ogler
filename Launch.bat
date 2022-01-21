@echo off

type files\hc_path.ini
set /p hc_path=< files\hc_path.ini
echo %hc_path%

cd /D "%hc_path%\bin\win64\"
launchercli.exe launch live -useTexEnvCombine
