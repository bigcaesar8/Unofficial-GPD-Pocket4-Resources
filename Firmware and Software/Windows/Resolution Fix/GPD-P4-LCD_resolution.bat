@echo OFF
@echo.
title GPD WinMini Resolution

:: ***********************************
::
::  Run script as adminstrator
::
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system" 
if '%errorlevel%' NEQ '0' ( 
    goto UACPrompt 
) else ( goto GetAdmin )
:UACPrompt 
if not "%~1"=="" set file= ""%~1"" 
(echo Set UAC = CreateObject("Shell.Application"^) 
echo UAC.ShellExecute "cmd.exe", "/c %~s0%file%", "", "runas", 1)> "%temp%\getadmin.vbs" 
"%temp%\getadmin.vbs" 
exit /b 0
:GetAdmin 
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )



reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v DALNonStandardModesBCD1 /t REG_BINARY /d 120019200000006010801920000000601000160000000060080012800000006007201280000000600768102400000060 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0001" /v DALNonStandardModesBCD1 /t REG_BINARY /d 120019200000006010801920000000601000160000000060080012800000006007201280000000600768102400000060 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0002" /v DALNonStandardModesBCD1 /t REG_BINARY /d 120019200000006010801920000000601000160000000060080012800000006007201280000000600768102400000060 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0003" /v DALNonStandardModesBCD1 /t REG_BINARY /d 120019200000006010801920000000601000160000000060080012800000006007201280000000600768102400000060 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0004" /v DALNonStandardModesBCD1 /t REG_BINARY /d 120019200000006010801920000000601000160000000060080012800000006007201280000000600768102400000060 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0005" /v DALNonStandardModesBCD1 /t REG_BINARY /d 120019200000006010801920000000601000160000000060080012800000006007201280000000600768102400000060 /f

:end
@echo All drivers are installed successfully.


echo.
echo ===                ===
echo === Press any key to reboot ===
echo.

pause
shutdown -r -t 0
