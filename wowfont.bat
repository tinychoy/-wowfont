@echo off
title ħ�޹��������޸Ľű�
CLS

color 0a
ECHO. 
ECHO. �˽ű�����Ϊ��
ECHO. 1�����Ϸŵ��ű����ļ����Ƹ������ű�����Ŀ¼���Ӧ�����ļ�����
ECHO. 2�����ű�Ŀ¼���Ӧ���ļ����Ʊ���Ϊ "...BAK.TTF"��
ECHO.
ECHO.ħ�޹��������޸Ľű� By �賿����-����ķ����
ECHO.
ECHO.
ECHO.��(1)��(0)�����ļ�Ϊ"...BAK.TTF"����(1,0)�س�:
set /p bak=
set fp=%1
if not defined fp (GOTO fp)else (GOTO MENU)

:fp
cls
ECHO.
ECHO �뽫�����ļ��ϷŽ���Ȼ��س�ȷ��:
set /p fp=
goto MENU
PAUSE

:MENU
ECHO
if "%bak%"=="1" ECHO   *��ѡ�񱸷���Ӧ�ļ�Ϊ"...BAK.TTF"
if "%bak%"=="0" ECHO   *��ѡ�񲻱��ݣ�
ECHO.  *��ѡ�������Ϊ��%fp%
ECHO.
ECHO.  =-=-=-=-=-= ��ѡ�������Ϊ�������� =-=-=-=-=-=
ECHO.
ECHO.  1  ս������(ARKai_C.TTF)
ECHO.
ECHO.  2  Ĭ������(ARKai_T.TTF)
ECHO.
ECHO.  3  ��������(ARHei.TTF)
ECHO.
ECHO.  4  FRIZQT__.TTF
ECHO.
ECHO.  5  ARIALN.TTF
ECHO.
ECHO.  6  *** ���������� ***
ECHO.
ECHO.  0  ��   ��
ECHO.
ECHO.
ECHO.����ѡ���Ӧ��Żس�ȷ����
set /p  ID=
if "%id%"=="1" goto cmd1
if "%id%"=="2" goto cmd2
if "%id%"=="3" goto cmd3
if "%id%"=="4" goto cmd4
if "%id%"=="5" goto cmd5
if "%id%"=="6" goto cmd6
if "%id%"=="0" exit
PAUSE


:cmd1
if "%bak%"=="1" copy "%~dp0ARKai_C.TTF" "%~dp0ARKai_Cbak.TTF"
copy %fp% "%~dp0ARKai_C.TTF"
cls
IF ERRORLEVEL 0 ECHO ս������(ARKai_C.TTF)������ĳɹ���
GOTO MENU


:cmd2
if "%bak%"=="1" copy "%~dp0ARKai_T.TTF" "%~dp0ARKai_Tbak.TTF"
copy %fp% "%~dp0ARKai_T.TTF"
cls
IF ERRORLEVEL 0 ECHO Ĭ������(ARKai_T.TTF)���ĳɹ���
GOTO MENU


:cmd3
if "%bak%"=="1" copy "%~dp0ARHei.TTF" "%~dp0ARHeibak.TTF"
copy %fp% "%~dp0ARHei.TTF"
cls
IF ERRORLEVEL 0 ECHO ��������(ARHei.TTF)���ĳɹ���
GOTO MENU

:cmd4
if "%bak%"=="1" copy "%~dp0FRIZQT__.TTF" "%~dp0FRIZQT__bak.TTF"
copy %fp% "%~dp0FRIZQT__.TTF"
cls
IF ERRORLEVEL 0 ECHO FRIZQT__.TTF���ĳɹ���
GOTO MENU

:cmd5
if "%bak%"=="1" copy "%~dp0ARIALN.TTF" "%~dp0ARIALNbak.TTF"
copy %fp% "%~dp0ARIALN.TTF"
cls
IF ERRORLEVEL 0 ECHO ARIALN.TTF���ĳɹ���
GOTO MENU

:cmd6
goto fp
