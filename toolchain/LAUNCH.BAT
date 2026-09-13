@echo off
REM ============================================================
REM LAUNCH.BAT - one-click Windows launcher for lantirc6
REM 
REM Just double-click this file. It starts DOSBox-X with the
REM lantirc6 build root pre-mounted as C:.
REM 
REM After DOSBox-X boots, you'll see a C:\> prompt. Common
REM commands from there:
REM
REM   CD \BUILD
REM   BUILD all       - full SDK build (BLDKBC + BLDKIT + BLDKMS + MKLIB)
REM   lantirc6 build
REM   MSC 6.0a build
REM   MAXBLD1         - 386MAX preprocess (~5 min)
REM   MAXBLD2         - 386MAX assemble + link (~5 min)
REM
REM To exit DOSBox-X: CTRL+F9 or type EXIT
REM
REM Config used: lantirc6\PCBBLDBT.CONF
REM Boot behavior: pass-through mount of lantirc6\BUILDROOT as C:
REM                (fast, host-editable, no CONFIG.SYS menu)
REM
REM For the full route menu (LANTIRC6/386MAX/BARE),
REM edit lantirc6\PCBBLDBT.CONF to enable the [autoexec] real-boot
REM stanza (imgmount fdboot.img + boot -l a). See lantirc6\README.md.
REM ============================================================

if not exist dosbox-x.exe (
    echo ERROR: dosbox-x.exe not found in this directory.
    echo        Run LAUNCH.BAT from the dosbox-x\ folder.
    pause
    exit /b 1
)

if not exist lantirc6\PCBBLDBT.CONF (
    echo ERROR: lantirc6\PCBBLDBT.CONF not found.
    echo        This bundle appears incomplete.
    pause
    exit /b 1
)

echo Starting DOSBox-X with lantirc6 build root...
dosbox-x.exe -conf lantirc6\PCBBLDBT.CONF
