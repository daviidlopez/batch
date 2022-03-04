echo on
IF exist "%CD%\PORT" rmdir /s /q PORT
IF not exist "%CD%\PORT" mkdir PORT
:in
netstat -b | find /c "[veyon-worker.exe]" > %CD%\PORT\port.txt
set /p port=<%CD%\PORT\port.txt
echo %port%
IF %port% GTR 1 (
    goto on 
) else (
    goto in
)
:on
set PATH=%PATH%;"C:\Program Files\Veyon"
veyon-cli service restart
msg * /time:1 Servicio Reiniciado
goto in