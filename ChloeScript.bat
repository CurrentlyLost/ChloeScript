@echo off
cls
chcp 65001 >nul
:start
call :banner

if "%1"=="runas" (
  cd %~dp0
  echo Hello from admin mode
  pause
) else (
  powershell Start -File "cmd '/K %~f0 runas'" -Verb RunAs
)

:banner
echo.
echo.
echo	[91m ██████╗██╗  ██╗██╗      ██████╗ ███████╗███████╗ ██████╗██████╗ ██╗██████╗ ████████╗[0m
echo	[91m██╔════╝██║  ██║██║     ██╔═══██╗██╔════╝██╔════╝██╔════╝██╔══██╗██║██╔══██╗╚══██╔══╝[0m
echo	[91m██║     ███████║██║     ██║   ██║█████╗  ███████╗██║     ██████╔╝██║██████╔╝   ██║   [0m
echo	[95m██║     ██╔══██║██║     ██║   ██║██╔══╝  ╚════██║██║     ██╔══██╗██║██╔═══╝    ██║   [0m
echo	[95m╚██████╗██║  ██║███████╗╚██████╔╝███████╗███████║╚██████╗██║  ██║██║██║        ██║   [0m
echo	 [95m╚═════╝╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚══════╝╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝╚═╝        ╚═╝[0m
echo.
echo.

:menu
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A
echo.
echo  ╔═ (1) Install Programs
echo  ║
echo  ╠══ (2) Community Scripts
echo  ║
echo  ╠═══ (3) Quit ChloeScript
set /p input=.%BS% ╚════^> 

if /I %input% EQU 1 (start Programs.bat)
if /I %input% EQU 2 (start CommunityScripts.bat)
if /I %input% EQU 3 (exit 0)

cls
goto start
echo.
pause
exit
