@echo OFF
title DetecOS
mode 50, 10
color F0
setlocal enabledelayedexpansion
set $VERSIONWINDOWS=0
cls
echo.
echo.
call :DetecOS
echo ^>OS detected: %$VERSIONWINDOWS%
echo.
pause
endlocal
EXIT

:: end main

:DetecOS (
    for %%a in (10.0. 6.3. 6.2. 6.1. 6.0. 5.1. 5.2. 2000 NT ME 98 95) do (
        ver | find /i "version %%a" > nul
        if !ERRORLEVEL!==0 (
            if %%a==10.0. set $VERSIONWINDOWS=Windows 10
            if %%a==6.3. set $VERSIONWINDOWS=Windows 8.1
            if %%a==6.2. set $VERSIONWINDOWS=Windows 8
            if %%a==6.1. set $VERSIONWINDOWS=Windows 7
            if %%a==6.0. set $VERSIONWINDOWS=Windows Vista
            if %%a==5.1. set $VERSIONWINDOWS=Windows XP
            if %%a==5.2. set $VERSIONWINDOWS=Windows 2003
            if %%a==2000 set $VERSIONWINDOWS=Windows 2000
            if %%a==NT set $VERSIONWINDOWS=Windows NT
            if %%a==ME set $VERSIONWINDOWS=Windows ME
            if %%a==98 set $VERSIONWINDOWS=Windows 98
            if %%a==95 set $VERSIONWINDOWS=Windows 95
            GOTO:EOF
        ) else (
            SET $VERSIONWINDOWS=Unknown
        )
    )
    GOTO:EOF
)

:: - End of the Code Source -