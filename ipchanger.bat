@echo off
cls
title IP Changer v1.20
color a
set about=This is a simple tool that change DNS server and IP address
set team=Team:TermuxHackz Society
set coder=Coder:Spider Anongreyhat
set github=Github:https://github.com/spider863644
set whatsapp=Whatsapp:+2349052863644
:main
echo %about%
echo %team%
echo %coder%
echo %whatsapp%
echo %github%
echo NOTE:This renew actions will not typically change your IP address. You just get permission to use that information for a longer period of time.
echo A:CHECK CURRENT IP
echo B;CHANGE IP
choice /c AB /m "Choose an option"
if errorlevel 1 goto :check
if errorlevel 2 goto :change
:check
::This will check current IP address
ipconfig
pause
goto :main
:change
::This will change IP address
ipconfig/release
pause
echo Wait...
pause
echo DNS server changing...
pause
ipconfig/renew
pause
echo DNS server changed
echo Success
goto :main