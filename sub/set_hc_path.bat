@echo off

set /p default_path=< %~dp0..\files\default_path.ini

if exist "%default_path%" (
    echo It appears you have Homecoming installed in the default location of %default_path%
    cls
    goto :confirm_path
)

:set_hc_path
echo It looks like OGLE isn't installed, or you need to set your Homecoming installation path . . .
set /p hc_path="Please type/copy and paste the full Homecoming installation path without a trailing \. (e.g. %default_path%): "

:confirm_set_path
cls
echo You have set your Homecoming installation path to: %hc_path%

:confirm_path
echo Are you sure that's the correct path? (y/n)
set /p continue=""

if not %continue%==y goto :set_hc_path

:store_hc_path
echo %hc_path%> %~dp0..\files\hc_path.ini