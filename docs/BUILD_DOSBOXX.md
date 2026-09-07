# Building DOSBox-X with NE2000 Loopback Fix

## Source
`toolchain/dosbox-x-src-patched.7z` — DOSBox-X source with NE2000 loopback fix applied.
Patch file: `docs/ne2000_loopback.patch`

## What the Patch Fixes
DOSBox-X NE2000 emulation doesn't support internal loopback mode.
Artisoft NE3.EXE uses loopback for hardware validation during init.
Two changes in `src/hardware/ne2000.cpp`:
1. Save/restore CR.stop around rx_frame() in loopback TX path
2. Skip MAC address filtering when TCR.loop_cntl is set

## Build (Windows — Visual Studio 2022)
```
7z x dosbox-x-src-patched.7z
cd dosbox-x-upstream
```
Open `vs/dosbox-x.sln` in Visual Studio 2022.
Build → Configuration: Release, Platform: x64.
Output: `bin/x64/Release/dosbox-x.exe`

Requires: DirectX 2010 SDK for Direct3D9 support.

## Build (Windows — MSYS2/MinGW)
Install MSYS2, open MinGW 64-bit prompt:
```
pacman -S git make mingw-w64-x86_64-toolchain mingw-w64-x86_64-SDL2 \
    mingw-w64-x86_64-libslirp autoconf automake nasm
cd dosbox-x-upstream
./build-mingw-sdl2
```
Output: `src/dosbox-x.exe`

## Build (Linux)
```
sudo apt install automake libsdl2-dev libslirp-dev libpng-dev nasm
cd dosbox-x-upstream
./autogen.sh
./configure --enable-sdl2
make -j$(nproc)
```
Output: `src/dosbox-x`

## DOSBox-X Config for LANtastic
```ini
[cpu]
cputype=pentium

[serial]
serial2=disabled

[ne2000]
ne2000=true
nicbase=300
nicirq=3
backend=slirp
```
- `cputype=pentium` — NE3 uses 286+ instructions (ENTER/LEAVE)
- `serial2=disabled` — COM2 uses IRQ 3, conflicts with NE2000
- `backend=slirp` — without backend, NIC registers return 0xFF

## Verify Patch
```bash
grep "saved_stop" src/hardware/ne2000.cpp    # should find 2 lines
grep "loop_cntl" src/hardware/ne2000.cpp     # should find 11 lines
```

## What Works Without the Patch
- INST6.EXE — full TUI installer
- NET.EXE, REDIR.EXE, SERVER.EXE, AILANBIO.EXE — load (no network)

## What Needs the Patch
- NE3.EXE — NE2000 driver (hangs on loopback test without fix)
- Full network stack: NE3 → AILANBIO → REDIR → SERVER → NET
