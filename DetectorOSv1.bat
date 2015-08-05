@ECHO OFF
TITLE DetecOS
MODE 50, 10
color 5F
setlocal enabledelayedexpansion
cls
ver | find /i "version 6.3." > nul
if !errorlevel!==0 (
	set $VERSIONWINDOWS=Windows 8.1
) else (
	ver | find /i "version 6.2." > nul
	if !errorlevel!==0 (
		set $VERSIONWINDOWS=Windows 8
	) else (
		ver | find /i "version 6.1." > nul
		if !errorlevel!==0 (
			set $VERSIONWINDOWS=Windows 7
		) else (
			ver | find /i "version 6.0." > nul
			if !errorlevel!==0 (
				set $VERSIONWINDOWS=Windows Vista
			) else (
				ver | find /i "version 5.1." > nul
				if !errorlevel!==0 (
					set $VERSIONWINDOWS=Windows XP
				) else (
					ver | find /i "version 5.2." > nul
					if !errorlevel!==0 (
						set $VERSIONWINDOWS=Windows 2003
					) else (
						ver | find /i "Windows 2000" > nul
						if !errorlevel!==0 (
							set $VERSIONWINDOWS=Windows 2000
						) else (
							ver | find /i "Windows NT" > nul
							if !errorlevel!==0 (
								set $VERSIONWINDOWS=Windows NT
							) else (
								ver | find /i ">Windows ME" > nul
								if !errorlevel!==0 (
									set $VERSIONWINDOWS=Windows ME
								) else (
									ver | find /i "Windows 98" > nul
									if !errorlevel!==0 (
										set $VERSIONWINDOWS=Windows 98
									) else (
										ver | find /i "Windows 95" > nul
										if !errorlevel!==0 (
											set $VERSIONWINDOWS=Windows 95
										) else (
											SET $VERSIONWINDOWS=Unknown
										)
									)
								)
							)
						)
					)
				)
			)
		)
	)
)

echo.
echo.
echo.OS detected: %$VERSIONWINDOWS%
echo.
pause
endlocal
EXIT