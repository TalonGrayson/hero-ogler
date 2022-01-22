@echo off

type files\hc_path.ini
set /p hc_path=< files\hc_path.ini
echo %hc_path%

cd /D "%hc_path%\bin\win64\live\"

if exist "OpenGL32.dll.off" (
    rename "OpenGL32.dll.off" "OpenGL32.dll"
)

cd /D "%hc_path%\bin\win64\"

SET batpath=%~dp0

launchercli.exe launch live -useTexEnvCombine -exitlaunch %batpath%\OpenGLoff.bat
