@echo off
cls
chcp 65001 >nul
:start
call :banner

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
echo  ╔═ (1) WinUtil (By ChrisTitusTech [GitHub])
echo  ║
echo  ╠══ (2) Win11 Debloat (By Raphire [GitHub])
echo  ║
echo  ╠═══ (3) Quit ChloeScript
set /p input=.%BS% ╚════^> 

if /I %input% EQU 1 if "%1%"=="runas" (
     powershell "irm "https://christitus.com/win" | iex"
) else (
  powershell Start -File "cmd '/K %~f0 runas'" -Verb RunAs
)
if /I %input% EQU 2 if "%1%"=="runas1" (
     powershell "& ([scriptblock]::Create((irm "https://win11debloat.raphi.re/")))"
) else (
  powershell Start -File "cmd '/K %~f0 runas'" -Verb RunAs
)
if /I %input% EQU 3 (exit 0)

cls
goto start
echo.
pause
exit

