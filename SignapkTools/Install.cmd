
@CLS
@ECHO on
@CLS
@PUSHD %~dp0

@TITLE (APK ZIPǩ������) �Ҽ��˵���ӹ���

@ECHO.
@ECHO  ��ʼ����Ҽ�...
@ECHO.

@IF EXIST %SystemRoot%\system32\signapk.jar (del /F /Q %SystemRoot%\system32\signapk.jar)
@COPY /V /Y .\signapk.jar %SystemRoot%\system32\

@IF EXIST %SystemRoot%\system32\testkey.x509.pem (del /F /Q %SystemRoot%\system32\testkey.x509.pem)
@COPY /V /Y .\testkey.x509.pem %SystemRoot%\system32\

@IF EXIST %SystemRoot%\system32\testkey.pk8 (del /F /Q %SystemRoot%\system32\testkey.pk8)
@COPY /V /Y .\testkey.pk8 %SystemRoot%\system32\

@IF EXIST %SystemRoot%\system32\singapk.cmd (del /F /Q %SystemRoot%\system32\singapk.cmd)
@COPY /V /Y .\singapk.cmd %SystemRoot%\system32\

@REG ADD "HKCR\*\shell\Android ǩ������\command" /v "" /t REG_SZ /d "%SystemRoot%\system32\singapk.cmd \"%%1\"" /f >nul 2>nul

@ECHO.
@ECHO  ����Ҽ���ɣ�
@ECHO.

@PAUSE
@POPD
@EXIT
