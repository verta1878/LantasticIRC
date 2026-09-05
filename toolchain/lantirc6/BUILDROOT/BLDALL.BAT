@echo off
set PATH=C:\BC31\BIN
echo === LZH.C === > C:\ERRORS.LOG
bcc -c -ml -w- -IC:\BC31\INCLUDE LZH.C >> C:\ERRORS.LOG
echo === NOSARCH.C === >> C:\ERRORS.LOG
bcc -c -ml -w- -IC:\BC31\INCLUDE NOSARCH.C >> C:\ERRORS.LOG
echo === STUBS.C === >> C:\ERRORS.LOG
bcc -c -ml -w- -IC:\BC31\INCLUDE STUBS.C >> C:\ERRORS.LOG
echo === HELPERS.C === >> C:\ERRORS.LOG
bcc -c -ml -w- -IC:\BC31\INCLUDE HELPERS.C >> C:\ERRORS.LOG
echo === DOSIO.C === >> C:\ERRORS.LOG
bcc -c -ml -w- -IC:\BC31\INCLUDE DOSIO.C >> C:\ERRORS.LOG
echo === DONE === >> C:\ERRORS.LOG
dir *.OBJ >> C:\ERRORS.LOG
