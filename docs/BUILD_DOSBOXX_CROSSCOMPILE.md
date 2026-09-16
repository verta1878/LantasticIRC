# Cross-Compiling DOSBox-X for Windows on Linux

## Source
Latest DOSBox-X (commit 0e5c2f9, Jun 2026). Includes built-in
physfs, flac, minizip in src/libs/ — no stubs needed.

## Patches Applied
1. **NE2000 loopback** (ne2000.cpp) — fix CR.stop and MAC filter
2. **INT 21h stub at 0x0070** (shell_misc.cpp) — upstream had 0x0050
   which overwrites BIOS data area → MCB corruption
3. **Top-of-memory** (shell.cpp) — upstream, COMMAND.COM at ~0x9F65
4. **INT 6 skip** (callback.cpp) — non-LTO builds trigger false
   Invalid Opcode; handler skips past it (reg_eip += 2)

## Prerequisites
```bash
sudo apt install g++-mingw-w64-x86-64 autoconf automake libtool \
    make wget libz-mingw-w64-dev
```

## Steps

### 1. Source + SDL2
```bash
git clone --depth 1 https://github.com/joncampbell123/dosbox-x.git
cd dosbox-x
wget "https://github.com/libsdl-org/SDL/releases/download/release-2.28.5/SDL2-devel-2.28.5-mingw.tar.gz"
tar xzf SDL2-devel-2.28.5-mingw.tar.gz
export PATH="$(pwd)/SDL2-2.28.5/x86_64-w64-mingw32/bin:$PATH"
```

### 2. Header case symlinks
```bash
cd /usr/x86_64-w64-mingw32/include
sudo ln -sf windows.h Windows.h
sudo ln -sf winsock2.h Winsock2.h
sudo ln -sf shlobj.h ShlObj.h
sudo ln -sf ws2tcpip.h Ws2tcpip.h
```

### 3. Build zlib + libiconv from source
```bash
# zlib
wget https://github.com/madler/zlib/releases/download/v1.3.1/zlib-1.3.1.tar.gz
CC=x86_64-w64-mingw32-gcc AR=x86_64-w64-mingw32-ar \
    RANLIB=x86_64-w64-mingw32-ranlib ./configure --static
make && sudo make install prefix=/usr/x86_64-w64-mingw32

# libiconv
wget https://ftp.gnu.org/pub/gnu/libiconv/libiconv-1.17.tar.gz
./configure --host=x86_64-w64-mingw32 --disable-shared --enable-static
make && sudo make install prefix=/usr/x86_64-w64-mingw32
```

### 4. Build libslirp (see toolchain/slirp-compat/)
```bash
git clone https://gitlab.freedesktop.org/slirp/libslirp.git
# Copy glib_compat.h to /usr/x86_64-w64-mingw32/include/glib-2.0/glib.h
# Compile glib_compat.c
# Compile all src/*.c with -DBUILDING_LIBSLIRP -DGLIB_STATIC_COMPILATION
# Archive into libslirp.a
```

### 5. Stub headers
- resource.h: extract IDs from source
- png.h: types only (C_LIBPNG disabled)
- iconv.h: declarations (libiconv provides functions)
- vs/config_package.h: version string
- PKEY stub: pkey_stub.cpp with GUID constant

### 6. Source fixes
- bios.cpp: wrap BIOS logo block with #if C_LIBPNG
- output_direct3d11.cpp: fix backslash includes
- hardware.cpp, savestates.cpp: add #include <ctime>
- callback.cpp: INT 6 skip (reg_eip += 2)
- shell_misc.cpp: stub_seg 0x0050 → 0x0070

### 7. Configure + Build
```bash
./autogen.sh && mkdir build-win && cd build-win
../configure --host=x86_64-w64-mingw32 --enable-sdl2 \
    --disable-avcodec --disable-libfluidsynth --disable-mt32 \
    --disable-printer --disable-d3d9 --disable-d3d-shaders

# Post-configure: disable C_LIBPNG, C_SSHOT, C_DIRECT3D in config.h
make -j$(nproc)
```

### 8. Manual link (if needed)
```bash
x86_64-w64-mingw32-g++ -o dosbox-x.exe -static -fno-lto \
    -Wl,--start-group $(find . -name "*.o") $(find . -name "*.a") \
    -lmingw32 -lSDL2main -lSDL2 -lopengl32 -lwinmm -ldsound \
    -limm32 -lole32 -loleaut32 -lversion -lsetupapi -lz -liconv \
    -lslirp -lwsock32 -lws2_32 -liphlpapi -lshlwapi -lcomdlg32 \
    -lgdi32 -ldxguid -lwinpthread -Wl,--end-group \
    -static-libgcc -static-libstdc++ -mconsole
```

## Output
```
dosbox-x.exe  38MB  PE32+ x86-64, static, no external DLLs
```

## Config (toolchain/dosbox-x.conf)
```ini
[cpu]
cputype=pentium
[sblaster]
recording=false       # prevents Windows mic permission hang
[ne2000]
ne2000=true
nicbase=300
nicirq=3
macaddr=AC:DE:48:88:99:AA
backend=slirp
```

## Known Issues
- LTO link OOM-kills in containers (<4GB RAM). Use -fno-lto for
  cross-compile, or build with MSYS2 on Windows for LTO.
- Non-LTO triggers false INT 6 — fixed with skip patch.
- Upstream 0x0050 bug — PR pending to DOSBox-X.
