#!/bin/bash
# LAUNCH.SH - Linux one-command launcher for pcbirc
# Just: ./LAUNCH.SH from the dosbox-x/ folder.
# After DOS boots you land at C:\> prompt. See LAUNCH.BAT for common
# commands.

cd "$(dirname "$0")"
if command -v dosbox-x >/dev/null 2>&1; then
    exec dosbox-x -conf pcbirc/PCBBLDBT.CONF
elif [ -x ./dosbox-x ]; then
    exec ./dosbox-x -conf pcbirc/PCBBLDBT.CONF
else
    echo "ERROR: dosbox-x not found. Install via ./SETUP.SH or apt install dosbox-x"
    exit 1
fi
