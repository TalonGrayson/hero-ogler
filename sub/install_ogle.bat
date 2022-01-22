@echo off

echo Installing OGLE to %hc_path%. . .
pause
mkdir "C:\Program Files\GLInterceptx64_1_3_4\Plugins\OGLE"
xcopy /s/i "%~dp0..\files\OGLE" "C:\Program Files\GLInterceptx64_1_3_4\Plugins\OGLE"
echo f | xcopy /f /y "C:\Program Files\GLInterceptx64_1_3_4\OpenGL32.dll" "%hc_path%\bin\win64\live\OpenGL32.dll"
echo f | xcopy /f /y "%~dp0..\files\custom\gliConfig.ini" "%hc_path%\bin\win64\live\gliConfig.ini"