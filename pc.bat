::@echo off
::set /p /a ass=andre
::set /a as="ass" + 1
::echo %as%
::pause
::cls


@echo off 
::set x=1 
::set y=2 
::set/a "z" = "x" + "y" + "20"
::echo %z% 
set /p "op=com tempo sim ou nao:" 
if "%op%" equ "sim"  geq  %op% equ "s"  (
	set  /p /a "tem=Digite o tempo:"
	::shutdown -%1 -t %tem%
	timeout /t %1 /nobreak & shutdown /%tem%
) else (
	shutdown -%1
)



pause
cls