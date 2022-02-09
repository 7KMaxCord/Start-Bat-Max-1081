:menu
@echo off & color 0f & cls & title Outside Shop https://discord.gg/wHgddJzY6b
mode 60,20
color 09
echo.
echo        [1] Avvia server     [2] Crea un Backup del server
echo.
echo        [3] Pulisci cache    [4] Aiuto
echo.
set /p answer="Di cosa hai bisogno ? > "
if /i {%ANSWER%}=={1} (goto :1)
if /i {%ANSWER%}=={2} (goto :2)
if /i {%ANSWER%}=={3} (goto :3)
if /i {%ANSWER%}=={4} (goto :4)
goto :menu
exit

:1
color 09
echo.
echo Caricamento del server in corso...
ping localhost -n 2 >nul
echo.
cd /d E:\Base
E:\Base\server\FXServer.exe +exec server.cfg
rem Modifica i due percorsi impostati qui sopra
pause
exit

:2
color 09
echo -----------------------------------
echo Caricamento del backup in corso...
echo -----------------------------------
ping localhost -n 5 >nul
XCOPY E:\Base E:\Base-backup\ /m /e /y 
rem Cambia il percorso impostato qui sopra
echo.
echo Backup creato con successo !
ping localhost -n 3 >nul
echo.
echo Per fermare il processo premere un qualsiasi tasto.
pause
exit

:3
color 09
echo.
echo Pulizia delle cache del server in corso...
RMDIR /s /q "E:\Base\cache"
rem Cambia il percorso impostato qui sopra
echo.
ping localhost -n 2 >nul
echo Cache del server eliminate con successo !
echo.
echo Per fermare il processo premere su un qualsiasi tasto.
pause
exit

:4
echo.
color 09
echo Entra nel nostro discord per ottenere supporto
ping localhost -n 3 >nul
echo.
echo Per ricevere assistenza apri un ticket
echo.
ping localhost -n 3 >nul
echo Rendirizandoti al nostro server discord...
ping localhost -n 5 >nul
start https://discord.gg/https://discord.gg/wHgddJzY6b
ping localhost -n 3 >nul
echo Rendirizazzione effettuata
ping localhost -n 3 >nul
echo.

:6
echo.
echo Fermando il processo...
ping localhost -n 3 >nul
exit