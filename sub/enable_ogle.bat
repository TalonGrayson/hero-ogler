@echo off

type %~dp0..\files\hc_path.ini
set /p hc_path=< %~dp0..\files\hc_path.ini

cd /D "%hc_path%\bin\win64\live\"
cls

if exist "OpenGL32.dll.off" (
    rename "OpenGL32.dll.off" "OpenGL32.dll"
)

cd /D %~dp0..\