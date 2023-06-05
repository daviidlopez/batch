@echo off
set NUM_AULA=Aula304
set path=%path%;"C:\Program Files\Veyon"
:in
cls
IF not exist "C:\ProgramData\V3yon\keys\public\%NUM_AULA%\key" (
    echo Hace falta el backup
    pause>nul
    exit
)

IF exist "C:\ProgramData\Veyon\keys\public\%NUM_AULA%\key" (
    goto delete
) else (
    goto import
)


:import
veyon-cli authkeys import %NUM_AULA%/public "C:\ProgramData\V3yon\keys\public\%NUM_AULA%\key"
veyon-cli authkeys setaccessgroup %NUM_AULA%/public Administradores
echo.
echo IMPORTADOS
pause > nul
exit

:delete
veyon-cli authkeys delete %NUM_AULA%/public
echo.
echo ELIMINADOS
pause > nul
exit
