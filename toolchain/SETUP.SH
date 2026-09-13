#!/bin/bash
# SETUP.SH — install DOSBox-X on Ubuntu/Debian host and helpers for the lantirc6 bundle
set -euo pipefail

usage() {
    cat <<USAGE
usage: SETUP.SH [--make-floppy]

  (no args)         install DOSBox-X 2024.03.01 + 2026.06.02
  --make-floppy     rebuild FDBOOT.IMG from KERNEL.SYS + FD*.SYS/BAT + FREEDOS/ (needs mtools)
USAGE
}

# FreeDOS floppy contents at toolchain/ root (flat, DOS-style):
#   KERNEL.SYS FDCONFIG.SYS FDAUTO.BAT FDOS/
FLOPPY_FILES="KERNEL.SYS FDCONFIG.SYS FDAUTO.BAT"
FLOPPY_DIRS="FDOS"

make_floppy() {
    local here="$(cd "$(dirname "$0")" && pwd)"
    local img="$here/FDBOOT.IMG"
    if ! command -v mformat >/dev/null 2>&1 || ! command -v mcopy >/dev/null 2>&1; then
        echo "!! mtools (mformat, mcopy) required — install with: sudo apt install mtools" >&2
        exit 1
    fi
    echo "==> Formatting fresh 1.44 MB FreeDOS floppy at $img"
    rm -f "$img"
    mformat -C -f 1440 -v FD13BOOT -i "$img" ::
    echo "==> Copying FreeDOS files into $img"
    for f in $FLOPPY_FILES; do
        [ -f "$here/$f" ] || { echo "!! missing $here/$f" >&2; exit 1; }
        mcopy -i "$img" "$here/$f" "::/$f"
    done
    for d in $FLOPPY_DIRS; do
        [ -d "$here/$d" ] || { echo "!! missing $here/$d" >&2; exit 1; }
        mmd -i "$img" "::/$d" || true
        (cd "$here/$d" && find . -type d | while read sub; do
            sub="${sub#./}"
            [ -z "$sub" ] && continue
            mmd -i "$img" "::/$d/$sub" 2>/dev/null || true
        done)
        (cd "$here/$d" && find . -type f | while read F; do
            sub="${F#./}"
            mcopy -i "$img" "$F" "::/$d/$sub"
        done)
    done
    echo "==> $img written ($(stat -c%s "$img") bytes)"
    echo "    Note: bootability depends on a proper FreeDOS boot sector."
    echo "    mformat produces a plain FAT12 stub, not a boot-capable one."
    echo "    To make bootable: boot a FreeDOS session (DOSBox-X + this floppy),"
    echo "    then run  SYS A:  from that session to write the boot sector."
}

if [ "${1:-}" = "--make-floppy" ]; then
    make_floppy
    exit 0
elif [ "${1:-}" = "-h" ] || [ "${1:-}" = "--help" ]; then
    usage
    exit 0
elif [ $# -gt 0 ]; then
    usage
    exit 1
fi

echo "==> Installing DOSBox-X 2024.03.01 (from apt)"
if ! command -v dosbox-x >/dev/null 2>&1; then
    sudo apt update
    sudo apt install -y dosbox-x
fi
echo "    installed: $(dosbox-x -version 2>&1 | grep -oE 'version [0-9.]+' | head -1)"

echo "==> Installing DOSBox-X 2026.06.02 (AppImage from pkgforge-dev)"
if ! command -v dosbox-x-2026 >/dev/null 2>&1; then
    URL="https://github.com/pkgforge-dev/DOSBox-X-AppImage/releases/download/2026.06.02-1@2026-07-01_1782914502/DOSBox-X-2026.06.02-1-anylinux-x86_64.AppImage"
    sudo wget -q "$URL" -O /usr/local/bin/dosbox-x-2026
    sudo chmod +x /usr/local/bin/dosbox-x-2026
fi
echo "    installed: $(dosbox-x-2026 -version 2>&1 | grep -oE 'version [0-9.]+' | head -1)"

echo ""
echo "==> Both versions available:"
echo "    dosbox-x        -> $(which dosbox-x) (default, proven)"
echo "    dosbox-x-2026   -> $(which dosbox-x-2026) (new, for 386max Phase B)"
echo ""
echo "==> Configs in ./ — copy or symlink where you need them"
echo "==> Optional: ./SETUP.SH --make-floppy   (rebuild FDBOOT.IMG)"
