@echo off
set PATH=C:\MSC60\BIN
set INCLUDE=C:\MSC60A\INCLUDE
set LIB=C:\MSC60A\LIB
set TMP=C:\
echo === INST6 === > C:\M60ALL.LOG
cl /c /W0 /AL INST6.C >> C:\M60ALL.LOG
echo === HELPERS === >> C:\M60ALL.LOG
cl /c /W0 /AL HELPERS.C >> C:\M60ALL.LOG
echo === LZH === >> C:\M60ALL.LOG
cl /c /W0 /AL LZH.C >> C:\M60ALL.LOG
echo === NOSARCH === >> C:\M60ALL.LOG
cl /c /W0 /AL NOSARCH.C >> C:\M60ALL.LOG
echo === DOSIO === >> C:\M60ALL.LOG
cl /c /W0 /AL DOSIO.C >> C:\M60ALL.LOG
echo === STUBS === >> C:\M60ALL.LOG
cl /c /W0 /AL STUBS.C >> C:\M60ALL.LOG
echo === LINKFIX === >> C:\M60ALL.LOG
cl /c /W0 /AL LINKFIX.C >> C:\M60ALL.LOG
echo === DONE === >> C:\M60ALL.LOG
dir *.OBJ >> C:\M60ALL.LOG
