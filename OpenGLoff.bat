@echo off

type files\hc_path.ini
set /p hc_path=< files\hc_path.ini
echo %hc_path%

cd /D "%hc_path%\bin\win64\live\"

if exist "OpenGL32.dll" (
    rename "OpenGL32.dll" "OpenGL32.dll.off"
)
