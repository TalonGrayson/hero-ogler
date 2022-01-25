@echo off

echo Installing OGLE to %hc_path%. . .

if not exist "C:\Program Files\GLInterceptx64_1_3_4\Plugins\OGLE" (
    mkdir "C:\Program Files\GLInterceptx64_1_3_4\Plugins\OGLE" && (
        echo Successfully created OGLE plugin folder . . .
    ) || (
        cls
        echo An error has occurred.
        echo You need to run HeroOgler in Administrator Mode to install the OGLE plugin.
        echo If the plugin is installed and you're just trying to capture, Administrator Mode is not required.
        echo If you believe this error should not be occurring, please report the issue on github or on the forum.
        set /p close = Press any key to close this window . . .
        exit
    )
)

if not exist "C:\Program Files\GLInterceptx64_1_3_4\Plugins\OGLE\config.ini" (    
    xcopy /s/i "%hero_ogler_path%\lib\files\OGLE" "C:\Program Files\GLInterceptx64_1_3_4\Plugins\OGLE" && (
        echo Successfully added OGLE\config.ini . . .
    ) || (
        cls
        echo An error has occurred.
        echo You need to run HeroOgler in Administrator Mode to install the OGLE plugin.
        echo If the plugin is installed and you're just trying to capture, Administrator Mode is not required.
        echo If you believe this error should not be occurring, please report the issue on github or on the forum.
        set /p close = Press any key to close this window . . .
        exit
    )
)

if not exist "C:\Program Files\GLInterceptx64_1_3_4\Plugins\OGLE\gliConfig_OGLE.ini" (    
    xcopy /s/i "%hero_ogler_path%\lib\files\OGLE" "C:\Program Files\GLInterceptx64_1_3_4\Plugins\OGLE" && (
        echo Successfully added OGLE\gliConfig_OGLE.ini . . .
    ) || (
        cls
        echo An error has occurred.
        echo You need to run HeroOgler in Administrator Mode to install the OGLE plugin.
        echo If the plugin is installed and you're just trying to capture, Administrator Mode is not required.
        echo If you believe this error should not be occurring, please report the issue on github or on the forum.
        set /p close = Press any key to close this window . . .
        exit
    )
)

if not exist "C:\Program Files\GLInterceptx64_1_3_4\Plugins\OGLE\OGLE.dll" (    
    xcopy /s/i "%hero_ogler_path%\lib\files\OGLE" "C:\Program Files\GLInterceptx64_1_3_4\Plugins\OGLE" && (
        echo Successfully added OGLE\OGLE.dll . . .
    ) || (
        cls
        echo An error has occurred.
        echo You need to run HeroOgler in Administrator Mode to install the OGLE plugin.
        echo If the plugin is installed and you're just trying to capture, Administrator Mode is not required.
        echo If you believe this error should not be occurring, please report the issue on github or on the forum.
        set /p close = Press any key to close this window . . .
        exit
    )
)

call "%hero_ogler_path%\lib\bats\enable_ogle.bat"

if not exist "%hc_path%\bin\win64\live\OpenGL32.dll" (
    echo f | xcopy /f /y "C:\Program Files\GLInterceptx64_1_3_4\OpenGL32.dll" "%hc_path%%\bin\win64\live\OpenGL32.dll"
)

if not exist "%hc_path%\bin\win64\live\gliConfig.ini" (
    echo f | xcopy /f /y "%hero_ogler_path%\lib\files\custom\gliConfig.ini" "%hc_path%\bin\win64\live\gliConfig.ini"
)
