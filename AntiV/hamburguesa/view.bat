@echo off
set path=%path%;"C:\Program Files\Veyon"
set /p num=192.168.34.
veyon-cli remoteaccess view 192.168.34.%num%
