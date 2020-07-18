@echo off


set /p var="Digite um numero"


If %var% == 1 goto i1 
If %var% == 2 goto i2 
If %var% == 3 (goto i3) 

:i2
echo "2"
goto endd

:i1
echo "1"
goto endd




:i3
echo "3"
goto endd


:endd
pause
cls
