@CLS
@ECHO.
@ECHO  开始安装 %~nx1 
@adb install -r %~1

@PAUSE
@POPD
@EXIT
