@echo off
set path=%path%;"C:\Program Files\Veyon"
:in
cls
IF not exist "C:\ProgramData\V3yon\keys\public\Aula205\key" (
    echo Hace falta el backup
    pause>nul
    exit
)

IF exist "C:\ProgramData\Veyon\keys\public\Aula205\key" (
    goto delete
) else (
    goto import
)


:import
veyon-cli authkeys import Aula205/public "C:\ProgramData\V3yon\keys\public\Aula205\key"
veyon-cli authkeys import Aula107/public "C:\ProgramData\V3yon\keys\public\Aula107\key"
veyon-cli authkeys setaccessgroup Aula205/public Administradores
veyon-cli authkeys setaccessgroup Aula107/public Administradores
echo.
echo IMPORTADOS
pause > nul
exit

:delete
veyon-cli authkeys delete Aula205/public
veyon-cli authkeys delete Aula107/public
echo.
echo ELIMINADOS
pause > nul
exit