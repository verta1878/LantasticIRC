@echo off
REM ============================================================
REM LAUNCH.BAT - one-click Windows launcher for pcbirc
REM 
REM Just double-click this file. It starts DOSBox-X with the
REM pcbirc build root pre-mounted as C:.
REM 
REM After DOSBox-X boots, you'll see a C:\> prompt. Common
REM commands from there:
REM
REM   CD \BUILD
REM   BUILD all       - full SDK build (BLDKBC + BLDKIT + BLDKMS + MKLIB)
REM   BLDKBC          - just Borland C++ 3.1 build
REM   BLDKMS          - just Microsoft C 7.0 build (Route A / PCBKMS)
REM   MAXBLD1         - 386MAX preprocess (~5 min)
REM   MAXBLD2         - 386MAX assemble + link (~5 min)
REM
REM To exit DOSBox-X: CTRL+F9 or type EXIT
REM
REM Config used: pcbirc\PCBBLDBT.CONF
REM Boot behavior: pass-through mount of pcbirc\BUILDROOT as C:
REM                (fast, host-editable, no CONFIG.SYS menu)
REM
REM For the full route menu (PWA/DELTA/IRC1541/PCBKMS/386MAX/BARE),
REM edit pcbirc\PCBBLDBT.CONF to enable the [autoexec] real-boot
REM stanza (imgmount fdboot.img + boot -l a). See pcbirc\README.md.
REM ============================================================

if not exist dosbox-x.exe (
    echo ERROR: dosbox-x.exe not found in this directory.
    echo        Run LAUNCH.BAT from the dosbox-x\ folder.
    pause
    exit /b 1
)

if not exist pcbirc\PCBBLDBT.CONF (
    echo ERROR: pcbirc\PCBBLDBT.CONF not found.
    echo        This bundle appears incomplete.
    pause
    exit /b 1
)

echo Starting DOSBox-X with pcbirc build root...
dosbox-x.exe -conf pcbirc\PCBBLDBT.CONF
