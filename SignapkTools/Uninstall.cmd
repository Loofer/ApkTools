
@CLS
@ECHO on
@CLS
@PUSHD %~dp0

@TITLE (APK ZIPǩ������) �Ҽ��˵�ж�ع���

@ECHO.
@ECHO  ��ʼж���Ҽ�...
@ECHO.

@IF EXIST %SystemRoot%\system32\signapk.jar (del /F /Q %SystemRoot%\system32\signapk.jar)

@IF EXIST %SystemRoot%\system32\testkey.x509.pem (del /F /Q %SystemRoot%\system32\testkey.x509.pem)

@IF EXIST %SystemRoot%\system32\testkey.pk8 (del /F /Q %SystemRoot%\system32\testkey.pk8)

@IF EXIST %SystemRoot%\system32\singapk.cmd (del /F /Q %SystemRoot%\system32\singapk.cmd)

@REG DELETE "HKCR\*\shell\Android ǩ������" /f >nul 2>nul

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
