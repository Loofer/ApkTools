
@CLS
@ECHO on
@CLS
@PUSHD %~dp0

@TITLE (APK ��װ����) �Ҽ��˵�ж�ع���

@ECHO.
@ECHO  ��ʼж���Ҽ�...
@ECHO.

@IF EXIST %SystemRoot%\system32\installapk.cmd (del /F /Q %SystemRoot%\system32\installapk.cmd)

@REG DELETE "HKCR\*\shell\Apk ��װ" /f >nul 2>nul

@ECHO.
@ECHO  ж���Ҽ���ɣ�
@ECHO.

@PAUSE
@POPD
@EXIT

@CLS
REM @ECHO off
@CLS
@PUSHD %~dp0


pause
@POPD
@EXIT
