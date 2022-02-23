@echo off
@REM Input de la ruta
:location
echo Escribe la ruta de la carpeta raiz:
set /p location=
cd "%location%"
IF %ERRORLEVEL% EQU 1 goto fail
goto folders
@REM Ruta no encontrada
:fail
pause
cls
goto location
@REM Input de cantidad de carpetas para crear
:folders
cls
echo Cuantas carpetas quieres crear?
set /p folders=
if %folders% GTR 0 goto crear
goto folders
@REM Crear carpetas
:crear
set num=0
:carpeta
cls
set /a num=%num%+1
echo Nombre %num%.Carpeta
set /p name=
md "%location%\%num%.%name%"
cls
echo Cuantos archivos quieres dentro de %num%.%name%
set /p files=
if %files% EQU 0 goto findefiles
if %files% GTR 0 goto files
@REM Crear archivos dentro de la carpeta
:files 
set var=1
:again
cls
echo Nombre del %var%.Archivo
set /p namefile=
type nul > "%location%\%num%.%name%\%var%.%namefile%.md"
set /a var=%var%+1
IF %var% GTR %files% goto findefiles
goto again
@REM Condicional para comprobar si falta crear carpetas
:findefiles
IF %num% EQU %folders% goto porfin
goto carpeta
@REM FIN
:porfin
cls
tree /f "%location%"
pause
echo Perfecto byebye
timeout 1 > nul
