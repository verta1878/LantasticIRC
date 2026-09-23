@echo off
REM cleanup.bat — Run before git commit
REM Strips build artifacts, normalizes line endings on text files

echo === LANtastic v6.0 pre-commit cleanup ===

REM Remove any temp/build files
del /s /q *.o 2>nul
del /s /q *.obj 2>nul
del /s /q *.log 2>nul
del /s /q *.tmp 2>nul
del /s /q Thumbs.db 2>nul
del /s /q desktop.ini 2>nul

REM Normalize BUILDROOT text files to CRLF (Windows convention)
REM These got LF-only from Linux cross-compile work
echo Normalizing line endings on BUILDROOT text files...

for /r toolchain\lantirc6\BUILDROOT %%f in (*.TXT *.H *.C *.INC *.ASM *.BAT *.CMD *.MAK *.DEF *.DOC *.INI *.CFG *.PR *.SC *.BA *.AS *.LN *.RSP *.LST *.OEM *.WSG *.ALL *.MAP *.FI *.FD) do (
    if exist "%%f" (
        REM Use PowerShell to normalize to CRLF
        powershell -command "(Get-Content '%%f' -Raw) -replace '(?<!\r)\n', \"`r`n\" | Set-Content '%%f' -NoNewline" 2>nul
    )
)

REM Normalize toolchain config files
for %%f in (toolchain\*.BAT toolchain\*.SYS toolchain\*.txt) do (
    if exist "%%f" (
        powershell -command "(Get-Content '%%f' -Raw) -replace '(?<!\r)\n', \"`r`n\" | Set-Content '%%f' -NoNewline" 2>nul
    )
)

REM Normalize FDOS config files
for /r toolchain\FDOS %%f in (*.bat *.de *.en *.es *.fr *.sv *.tr *.ini *.fdi) do (
    if exist "%%f" (
        powershell -command "(Get-Content '%%f' -Raw) -replace '(?<!\r)\n', \"`r`n\" | Set-Content '%%f' -NoNewline" 2>nul
    )
)

echo.
echo === Cleanup complete ===
echo Ready to commit. Run:
echo   git add -A
echo   git commit -m "Phase A+B+D complete — v6.0 DOS NOS recovery"
echo   git push
