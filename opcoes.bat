@echo off

:i
pause
cls
choice /c "123456" /n /m "Digite:"

:res
goto %errorlevel%

:1
echo "oi"
goto i

:2
echo "ola"
goto i

:3
echo "Test"
goto i

:4
echo "Tururu"
goto i

:5
echo "ww"
goto i

:6
echo "lulu"
goto end

:end
pause > nul