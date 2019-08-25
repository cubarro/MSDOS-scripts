@echo off
echo ***
echo.Codigo en C:/python/cloud.bat
echo ***
SETLOCAL EnableDelayedExpansion
for /f "tokens=2 delims=:." %%x in ('chcp') do set cp=%%x
chcp 1252 >nul
echo.Consultando ...
:: --- Consulto la dirección ip
ipconfig | findstr IPv4 >ipTmp.txt
SET /p var=<ipTmp.txt
DEL ipTmp.txt  >nul 2>nul
:: echo %var%
:: --- Manipulo la cadena para tomar solo a ip
for /f "tokens=1,2 delims=:" %%a in ("%var%") do (set pre=%%a&set suf=%%b)
set suf=%suf: =%
:: echo.pre: %pre%
:: echo.suf  : %suf%
echo.Dirección IP: %suf%
:: echo.La cadena es %1% %2% %3%
chcp %cp%>nul
cloudcmd --root %cd% --name %suf%  