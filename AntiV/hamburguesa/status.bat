@echo off
set path=%path%;"C:\program files\veyon"
echo Listado de claves
echo.
veyon-cli authkeys list
echo.
echo.
veyon-cli service status
pause>nul