@echo off
IF not exist "C:\ProgramData\V3yon" goto crear
IF exist "C:\ProgramData\V3yon" goto backear

:backear
rmdir /s /q "C:\ProgramData\veyon"
rename "C:\ProgramData\v3yon" Veyon
pause
exit

:crear
rename C:\ProgramData\Veyon V3yon
xcopy /e /i C:\ProgramData\V3yon C:\ProgramData\Veyon
echo BACKUP CREADO
pause