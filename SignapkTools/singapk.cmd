


@CLS
@ECHO off
@TITLE APK ZIPǩ������
@CLS
@PUSHD %~dp0

@SET sjar=%~dp0signapk.jar
@SET tpem=%~dp0testkey.x509.pem
@SET tpk8=%~dp0testkey.pk8

@ECHO.
@ECHO  ��ʼ�� %~nx1 ����ǩ��...
@java -jar %sjar% -w %tpem% %tpk8% %~1 %~dp1pwelyn_%~nx1
@if errorlevel 1 (
    @ECHO.
    @ECHO  ǩ������
    @PAUSE
    @EXIT
)
@ECHO.
@ECHO  ǩ����ɣ�
@ECHO.

@PAUSE
@POPD
@EXIT
