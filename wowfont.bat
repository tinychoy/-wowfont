@echo off
CLS

color 0a
ECHO �˽ű�����Ϊ��
ECHO 1�����Ϸŵ��ű����ļ����Ƹ������ű�����Ŀ¼���Ӧ�����ļ�����
ECHO 2�����ű�Ŀ¼���Ӧ���ļ����Ʊ���Ϊ nameBAK.TTF��
set fp=%1
if not defined fp (GOTO fp)else (GOTO MENU)


:fp
echo Ŀ������Ϊ��
echo �뽫�����ļ��Ͻ���Ȼ��س�ȷ��:
set /p fp=
goto MENU
PAUSE

:MENU
ECHO. 
ECHO.
ECHO.  =-=-=-=-=��ѡ�������Ϊ��������=-=-=-=-=
ECHO.
ECHO.  1  ս����������(ARKai_C.TTF)
ECHO.
ECHO.  2  Ĭ������(ARKai_T.TTF)
ECHO.
ECHO.  3  ��������(ARHei.TTF)
ECHO.
ECHO.  4  ��ҡ��ѵ��������󶨵�����(FRIZQT__.TTF)
ECHO.
ECHO.  5  ���������������ϵ�����(ARIALN.TTF)
ECHO.
ECHO.  6  ����˵�������š�ʯ������������(FZBWJW.TTF)
ECHO.
ECHO.  7  ��Ʒ�����ܵ�˵������(FZXHJW.TTF)
ECHO.
ECHO.  0  ��   ��
ECHO.
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
if "%id%"=="7" goto cmd7
if "%id%"=="0" exit
PAUSE


:cmd1
copy "%~dp0ARKai_C.TTF" "%~dp0ARKai_Cbak.TTF"
copy %fp% "%~dp0ARKai_C.TTF"
GOTO MENU



:cmd2
copy "%~dp0ARKai_T.TTF" "%~dp0ARKai_Tbak.TTF"
copy %fp% "%~dp0ARKai_T.TTF"
GOTO MENU


:cmd3
copy "%~dp0ARHei.TTF" "%~dp0ARHeibak.TTF"
copy %fp% "%~dp0ARHei.TTF"
GOTO MENU

:cmd4
copy "%~dp0FRIZQT__.TTF" "%~dp0FRIZQT__bak.TTF"
copy %fp% "%~dp0FRIZQT__.TTF"
GOTO MENU

:cmd5
copy "%~dp0ARIALN.TTF" "%~dp0ARIALNbak.TTF"
copy %fp% "%~dp0ARIALN.TTF"
GOTO MENU

:cmd6
copy "%~dp0FZBWJW.TTF" "%~dp0FZBWJWbak.TTF"
copy %fp% "%~dp0FZBWJW.TTF"
GOTO MENU

:cmd7
copy "%~dp0FZXHJW.TTF" "%~dp0FZXHJWbak.TTF"
copy %fp% "%~dp0FZXHJW.TTF"
GOTO MENU

