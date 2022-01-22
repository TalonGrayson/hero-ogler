@echo off

type %~dp0..\files\hc_path.ini
set /p hc_path=< %~dp0..\files\hc_path.ini

cd /D "%hc_path%\bin\win64\live\"

if exist "OpenGL32.dll" (
    rename "OpenGL32.dll" "OpenGL32.dll.off"
)

cd /D %~dp0..\