
@CLS
@ECHO on
@CLS
@PUSHD %~dp0

@TITLE (APK 安装功能) 右键菜单卸载工具

@ECHO.
@ECHO  开始卸载右键...
@ECHO.

@IF EXIST %SystemRoot%\system32\installapk.cmd (del /F /Q %SystemRoot%\system32\installapk.cmd)

@REG DELETE "HKCR\*\shell\Apk 安装" /f >nul 2>nul

@ECHO.
@ECHO  卸载右键完成！
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
