@echo off

:set_hc_path
cls
set /p hc_path="Homecoming installation path (e.g. C:\Games\Homecoming): "

:confirm_path
echo %hc_path%
echo Are you sure that's the correct path? (y/n)
set /p continue=""

if %continue%==n goto :set_hc_path

:store_hc_path
echo %hc_path%> files\hc_path.ini

:confirm_install
echo Ready to install . . .
echo Close this window to cancel . . .
pause

:install
echo Installing GLIntercept . . .
echo START /WAIT files\GLInterceptx64_1_3_4.exe

echo Installing OGLE . . .
xcopy /s/i "files\OGLE" "%hc_path%\Plugins\OGLE"
echo f | xcopy /f /y "C:\Program Files\GLInterceptx64_1_3_4\OpenGL32.dll" "%hc_path%\bin\win64\live\OpenGL32.dll"
echo f | xcopy /f /y "files\custom\gliConfig.ini" "%hc_path%\bin\win64\live\gliConfig.ini"

echo Installation complete!
set /p launch="Launch Homecoming with capture enabled now? (y/n): "

if %launch%==n goto :exit

:launch
echo "%hc_path%\bin\win64"
echo Launching . . .
cd /D "%hc_path%\bin\win64\"
launchercli.exe launch live -useTexEnvCombine

:exit
echo Window will now close . . .
