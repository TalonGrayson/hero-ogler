@echo off

echo Installing OGLE to %hc_path%. . .

if not exist "C:\Program Files\GLInterceptx64_1_3_4\Plugins\OGLE" (
    mkdir "C:\Program Files\GLInterceptx64_1_3_4\Plugins\OGLE"
    xcopy /s/i "%hero_ogler_path%\lib\files\OGLE" "C:\Program Files\GLInterceptx64_1_3_4\Plugins\OGLE"
)

call "%hero_ogler_path%\lib\bats\enable_ogle.bat"

if not exist "%hc_path%\bin\win64\live\OpenGL32.dll" (
    echo f | xcopy /f /y "C:\Program Files\GLInterceptx64_1_3_4\OpenGL32.dll" "%hc_path%%\bin\win64\live\OpenGL32.dll"
)

if not exist "%hc_path%\bin\win64\live\gliConfig.ini" (
    echo f | xcopy /f /y "%hero_ogler_path%\lib\files\custom\gliConfig.ini" "%hc_path%\bin\win64\live\gliConfig.ini"
)
