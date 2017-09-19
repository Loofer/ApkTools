
@CLS
@ECHO on
@CLS
@PUSHD %~dp0

@TITLE (APK ZIP签名功能) 右键菜单添加工具

@ECHO.
@ECHO  开始添加右键...
@ECHO.

@IF EXIST %SystemRoot%\system32\installapk.cmd (del /F /Q %SystemRoot%\system32\installapk.cmd)
@COPY /V /Y .\installapk.cmd %SystemRoot%\system32\

@REG ADD "HKCR\*\shell\Apk 安装\command" /v "" /t REG_SZ /d "%SystemRoot%\system32\installapk.cmd \"%%1\"" /f >nul 2>nul

@ECHO.
@ECHO  添加右键完成！
@ECHO.

@PAUSE
@POPD
@EXIT
