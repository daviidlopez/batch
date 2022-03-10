:bucle
if exist "E:\" goto in
goto bucle
:in
xcopy "E:\" "%userprofile%\Desktop\backup" /E /Y /exclude:%userprofile%\documents\txt.txt
pause