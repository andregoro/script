@echo off

:: Chama função inicio
call:inicio

:: Chama a função principal
call:processamento

echo Fim
goto:eof

:: ##############

:inicio -- função de inicializacao
:$created 02/11/2011 :Sauthor Pedro Elsner
    
    echo Iniciando aplicacao

exit /b 0

:processamento -- função principal
:$created 02/11/2011 :Sauthor Pedro Elsner
    
    echo Processando...

exit /b 0