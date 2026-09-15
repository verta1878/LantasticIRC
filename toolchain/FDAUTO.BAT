@ECHO OFF
REM ------------------------------------------------------------------
REM FDAUTO.BAT - FreeDOS boot chain into C:
REM Map FreeDOS numeric %CONFIG% (1-6) to route names, export as ROUTE,
REM chain to C:\AUTOEXEC.BAT which will dispatch on %ROUTE% or %CONFIG%.
REM ------------------------------------------------------------------
IF "%CONFIG%"=="1" SET ROUTE=PWA
IF "%CONFIG%"=="2" SET ROUTE=DELTA
IF "%CONFIG%"=="3" SET ROUTE=IRC1541
IF "%CONFIG%"=="4" SET ROUTE=PCBKMS
IF "%CONFIG%"=="5" SET ROUTE=386MAX
IF "%CONFIG%"=="6" SET ROUTE=BARE
IF "%ROUTE%"=="" SET ROUTE=PWA

SET DOSDIR=A:\FDOS
PATH=A:\FDOS;C:\;C:\FDOS\BIN
C:
CD \
IF EXIST C:\AUTOEXEC.BAT CALL C:\AUTOEXEC.BAT
