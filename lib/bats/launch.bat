@echo off
set /p hc_path=< "%hero_ogler_path%\lib\files\paths\hc_path.ini"

call "%hero_ogler_path%\lib\bats\enable_ogle.bat"

cd /D "%hc_path%\bin\win64\"

launchercli.exe launch live -useTexEnvCombine -exitlaunch %~dp0\disable_ogle.bat