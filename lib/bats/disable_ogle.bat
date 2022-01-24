@echo off

if ["%hero_ogler_path%"] == [""] (
    if exist %~dp0..\files\paths\hero_ogler_path.ini (
        set /p hero_ogler_path=< "%~dp0..\files\paths\hero_ogler_path.ini"
    )
)

set /p hc_path=< "%hero_ogler_path%\lib\files\paths\hc_path.ini"

cd /D "%hc_path%\bin\win64\live\"

if exist "OpenGL32.dll" (
    rename "OpenGL32.dll" "OpenGL32.dll.off"
)