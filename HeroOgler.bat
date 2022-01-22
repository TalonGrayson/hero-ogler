@echo off
cd /D %~dp0

:install_glintercept
if not exist "C:\Program Files\GLInterceptx64_1_3_4" (
	call sub\install_glintercept.bat
)

:check_hc_path
set /p hc_path=< files\hc_path.ini

if not exist "%hc_path%" (
	call sub\set_hc_path.bat
	set /p hc_path=< files\hc_path.ini
)

:install_ogle
if not exist "C:\Program Files\GLInterceptx64_1_3_4\Plugins\OGLE" (
	call sub\install_ogle.bat
)

:prep_ogle
call sub\enable_ogle.bat

if not exist "%hc_path%\bin\win64\live\OpenGL32.dll" (
	call sub\install_ogle.bat
)

echo Ready to launch CoH in OGLE mode!
pause
:launch_coh
call sub\launch.bat
pause