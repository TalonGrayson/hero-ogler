@echo off
cd /D %~dp0

echo %~dp0> "%~dp0\lib\files\paths\hero_ogler_path.ini"

set /p hero_ogler_path=< "%~dp0\lib\files\paths\hero_ogler_path.ini"

:install_glintercept
if not exist "C:\Program Files\GLInterceptx64_1_3_4" (
	call "%hero_ogler_path%\lib\bats\install_glintercept.bat"
)

:check_hc_path
set /p hc_path=< "%hero_ogler_path%\lib\files\paths\hc_path.ini"

if not exist "%hc_path%" (
	call "%hero_ogler_path%\lib\bats\set_hc_path.bat"
	set /p hc_path=< "%hero_ogler_path%\lib\files\paths\hc_path.ini"
)

:install_ogle
if not exist "C:\Program Files\GLInterceptx64_1_3_4\Plugins\OGLE" (
	call "%hero_ogler_path%\lib\bats\install_ogle.bat"
)

:prep_ogle
if not exist "%hc_path%\bin\win64\live\OpenGL32.dll" (
	if not exist "%hc_path%\bin\win64\live\OpenGL32.dll.off" (
		call "%hero_ogler_path%\lib\bats\install_ogle.bat"
	)
)

:launch_coh
call "%hero_ogler_path%\lib\bats\launch.bat"