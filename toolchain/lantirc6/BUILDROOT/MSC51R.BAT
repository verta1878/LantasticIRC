@echo off
set PATH=C:\MSC51\BIN
set INCLUDE=C:\MSC60A\INCLUDE
set LIB=C:\MSC51\LIB
set TMP=C:\
del *.OBJ
echo === INST6 === > C:\M51R.LOG
cl /c /W0 /AL INST6.C >> C:\M51R.LOG
echo === HELPERS === >> C:\M51R.LOG
cl /c /W0 /AL HELPERS.C >> C:\M51R.LOG
echo === LZH === >> C:\M51R.LOG
cl /c /W0 /AL LZH.C >> C:\M51R.LOG
echo === NOSARCH === >> C:\M51R.LOG
cl /c /W0 /AL NOSARCH.C >> C:\M51R.LOG
echo === DOSIO === >> C:\M51R.LOG
cl /c /W0 /AL DOSIO.C >> C:\M51R.LOG
echo === STUBS === >> C:\M51R.LOG
cl /c /W0 /AL STUBS.C >> C:\M51R.LOG
echo === LINKFIX === >> C:\M51R.LOG
cl /c /W0 /AL LINKFIX.C >> C:\M51R.LOG
echo === LINK === >> C:\M51R.LOG
C:\MSC51\BIN\LINK.EXE /NOI INST6+HELPERS+LZH+NOSARCH+DOSIO+STUBS+LINKFIX,INST6.EXE,NUL,LLIBCR; >> C:\M51R.LOG
echo === DONE === >> C:\M51R.LOG
dir INST6.EXE >> C:\M51R.LOG
