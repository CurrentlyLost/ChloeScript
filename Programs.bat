@echo off
cls
chcp 65001 >nul
cd /d "%~dp0"

:banner
echo.
echo.
echo	[91m ██████╗██╗  ██╗██╗      ██████╗ ███████╗███████╗ ██████╗██████╗ ██╗██████╗ ████████[0m
echo	[91m██╔════╝██║  ██║██║     ██╔═══██╗██╔════╝██╔════╝██╔════╝██╔══██╗██║██╔══██╗╚══██╔══[0m
echo	[91m██║     ███████║██║     ██║   ██║█████╗  ███████╗██║     ██████╔╝██║██████╔╝   ██║[0m
echo	[95m██║     ██╔══██║██║     ██║   ██║██╔══╝  ╚════██║██║     ██╔══██╗██║██╔═══╝    ██║[0m
echo	[95m╚██████╗██║  ██║███████╗╚██████╔╝███████╗███████║╚██████╗██║  ██║██║██║        ██║[0m
echo	 [95m╚═════╝╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚══════╝╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝╚═╝        ╚═╝[0m
echo.
echo.

:menu
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A
echo.
echo  ╔═ (1) Install Winget (Run Again When Accepted UAC)
echo  ║
echo  ╠══ (2) Install Default Progams (Installs Most Used Programs)
echo  ║
echo  ╠═══ (3) Quit ChloeScript
set /p input=.%BS% ╚════^> 

if /I %input% EQU 1 if "%1%"=="runas" (
     powershell "irm asheroto.com/winget | iex"
) else (
  powershell Start -File "cmd '/K %~f0 runas'" -Verb RunAs
)
if /I %input% EQU 2 if "%1"=="runas1" (
     powershell "scripts/default-programs.ps1"
) else (
  powershell Start -File "cmd '/K %~f0 runas1'" -Verb RunAs
)
if /I %input% EQU 3 (exit)

echo.

