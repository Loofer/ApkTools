
@CLS
@ECHO on
@CLS
@PUSHD %~dp0

@TITLE (APK ZIPǩ������) �Ҽ��˵���ӹ���

@ECHO.
@ECHO  ��ʼ����Ҽ�...
@ECHO.

@IF EXIST %SystemRoot%\system32\installapk.cmd (del /F /Q %SystemRoot%\system32\installapk.cmd)
@COPY /V /Y .\installapk.cmd %SystemRoot%\system32\

@REG ADD "HKCR\*\shell\Apk ��װ\command" /v "" /t REG_SZ /d "%SystemRoot%\system32\installapk.cmd \"%%1\"" /f >nul 2>nul

@ECHO.
@ECHO  ����Ҽ���ɣ�
@ECHO.

@PAUSE
@POPD
@EXIT
