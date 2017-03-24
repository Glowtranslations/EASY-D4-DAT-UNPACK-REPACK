@Echo OFF
CHCP 65001 1>NUL
title EASY D4 DAT UNPACK-REPACK
color 0a
:Menu
title EASY D4 DAT UNPACK-REPACK
cls
echo ****************************************************************************
echo *                         Bienvenido al programa                           *
echo ****************************************************************************
echo.
echo ****************************************************************************
echo *               PS3                  *              PS VITA                *
echo *                                    *                                     *
echo * 1. Descifrar un único DAT          * 4. Descifrar un único DAT           *
echo *                                    *                                     *
echo * 2. Descifrar todos los DAT         * 5. Descifrar todos los DAT          * 
echo *                                    *                                     *
echo * 3. Cifrar DAT                      * 6. Cifrar DAT                       *
echo *                                    *                                     *
echo ****************************************************************************
echo *                                                                          *
echo * 7. Créditos                                                              *
echo *                                                                          *
echo * 8. Salir del programa                                                    *
echo *                                                                          *
echo ****************************************************************************
echo.
CHOICE /N /C:12345678 /M "Escoge una opción (1-8)"%1
IF ERRORLEVEL ==8 Exit
IF ERRORLEVEL ==7 GOTO CREDITS
IF ERRORLEVEL ==6 GOTO DATPACKERVITA
IF ERRORLEVEL ==5 GOTO ALLDATUNPACKERVITA
IF ERRORLEVEL ==4 GOTO DATUNPACKERVITA
IF ERRORLEVEL ==3 GOTO DATPACKERPS3
IF ERRORLEVEL ==2 GOTO ALLDATUNPACKERPS3
IF ERRORLEVEL ==1 GOTO DATUNPACKERPS3
:DATUNPACKERPS3
title Introduce el nombre del DAT (PS3)
cls
cd BIN
set /p DAT= Introduce el nombre del DAT (sin la extensión): 
quickbms.exe -Y "DATPS3.bms" "../DAT/PS3/%DAT%.DAT" "../DAT/PS3/%DAT%"
cd ..
title Descifrado (PS3)
pause
goto :Menu

:ALLDATUNPACKERPS3
title Descifrando... (PS3)
cls
cd BIN
quickbms.exe -d -Y "DATPS3.bms" "../DAT/PS3/*.DAT" "../DAT/PS3"
cd ..
title Descifrado (PS3)
pause
goto :Menu

:DATPACKERPS3
cls
title Introduce el nombre del DAT descifrado (PS3)
cls
cd BIN
set /p DAT= Introduce el nombre de la carpeta del DAT descifrado: 
quickbms.exe -Y -r -w "DATPS3.bms" "../DAT/PS3/%DAT%.DAT" "../DAT/PS3/%DAT%"
cd ..
Title Cifrado (PS3)
pause
goto :Menu

:DATUNPACKERVITA
title Introduce el nombre del DAT (PS Vita)
cls
cd BIN
set /p DAT= Introduce el nombre del DAT (sin la extensión): 
quickbms.exe -Y "DATVITA.bms" "../DAT/VITA/%DAT%.DAT" "../DAT/VITA/%DAT%"
cd ..
Title Descifrado (PS Vita)
pause
goto :Menu

:ALLDATUNPACKERVITA
title Descifrando...  (PS Vita)
cls
cd BIN
quickbms.exe -d -Y "DATVITA.bms" "../DAT/VITA/*.DAT" "../DAT/VITA"
cd ..
Title Descifrado (PS Vita)
pause
goto :Menu

:DATPACKERVITA
cls
title Introduce el nombre del DAT descifrado (PS Vita)
cls
cd BIN
set /p DAT= Introduce el nombre de la carpeta del DAT descifrado: 
quickbms.exe -Y -r -w "DATVITA.bms" "../DAT/VITA/%DAT%.DAT" "../DAT/VITA/%DAT%"
cd ..
Title Cifrado (PS Vita)
pause
goto :Menu

:CREDITS
cls
title Créditos
echo ******************************************************
echo *  -Batch creado por Darkmet98                       *
echo *                                                    *
echo *  -Quickbms por Luigi Auriemma                      *
echo *                                                    *
echo *  -Script BMS PS3 creado por Raugo                  *
echo *                                                    *
echo *  -Script BMS PS Vita creado por Luigi Auriemma     *
echo *                                                    *
echo *                  Glowtranslations                  *
echo *                        2017                        *
echo ******************************************************
pause
goto :Menu