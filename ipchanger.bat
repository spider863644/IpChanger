@echo off
cls
title IP Changer v1.0
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
echo Type "CHECK" to check current IP address
echo Type "CHANGE" to change IP address
echo NOTE:This renew actions will not typically change your IP address. You just get permission to use that information for a longer period of time.
set /p type=Type here...
if %type%=="CHECK" (goto :check) Else(echo Enter a valid option)
if %type%=="CHANGE" (goto :change) Else(echo Enter a valid option)
:check
::This will check current IP address
ipconfig
goto :main
:change
::This will change IP address
ipconfig/release
pause
pause
pause.
echo Wait...
pause
pause
pause
echo DNS server changing...
pause
pause
ipconfig/renew
pause
echo.
echo DNS server changed
echo "You can now check ur IPaddress by typing "CHECK"
goto :main