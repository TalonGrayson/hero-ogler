@echo off


set batpath=%~dp0
set /p hc_path=< %batpath%..\files\hc_path.ini

cd /D "%hc_path%\bin\win64\live\"

call %batpath%\enable_ogle.bat

cd /D "%hc_path%\bin\win64\"

launchercli.exe launch live -exitlaunch call %batpath%\disable_ogle.bat