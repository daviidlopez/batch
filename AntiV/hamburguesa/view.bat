@echo off
set num_aula=34
set path=%path%;"C:\Program Files\Veyon"
set /p ip_pc=192.168.%num_aula%.
veyon-cli remoteaccess view 192.168.%num_aula%.%ip_pc%
