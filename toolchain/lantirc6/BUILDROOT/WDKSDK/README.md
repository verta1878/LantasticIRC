# wINSTALL SDK — Open Source Installer Toolkit
## GPLv3 — the crew 4free

### What Is This?

Clean-room GPLv3 reimplementation of the Knowledge Dynamics wINSTALL V3.22
software installation framework (1993). Compatible with NOS/RR archive files
used by Artisoft LANtastic v6 and other products that used the KD toolkit.

### Features

- **LZH decompression** — LZSS + Huffman, 8K window, verified against 243 files
- **NOS/RR archive reader** — reads the Artisoft NOS6.001-004 archive format
- **nosextract tool** — standalone command-line archive extractor
- **DOS 16-bit support** — builds with MSC 5.1 for real DOS
- **Modern platform support** — builds with gcc/clang on Linux/macOS/Windows

### Quick Start

```bash
make
./tools/nosextract NOS6.001 output/
```

### Building

**Linux/macOS (gcc):**
```bash
make
```

**DOS (MSC 5.1 in DOSBox):**
```
cl /c /W0 /AL /Iinclude src\lzh.c src\nosarch.c
cl /c /W0 /AL /Iinclude tools\nosextract.c
link lzh+nosarch+nosextract,nosextract.exe,,llibcr;
```

### Directory Structure

```
winstall_sdk/
  include/winstall.h     — Public API header
  src/lzh.c              — LZH decompressor
  src/nosarch.c          — NOS/RR archive reader
  src/dosio.c            — DOS INT 21h wrappers (16-bit only)
  tools/nosextract.c     — Archive extraction utility
  docs/                  — Format documentation
  examples/              — Example usage
  lib/                   — Built library output
  Makefile               — Build script
```

### Archive Format (NOS/RR)

Each file in the archive has a 41-byte header:
- Bytes 0-1: Magic "RR"
- Byte 2: Version (0x01)
- Byte 3: Record type (0x09=file, 0x01=end)
- Byte 4: Compression (0x20=LZH, 0x30=raw)
- Bytes 5-8: Compressed size (little-endian)
- Bytes 9-12: Original size (little-endian)
- Bytes 26-38: Filename (8.3 DOS format)

### LZH Algorithm

Parameters (from Ghidra reverse-engineering):
- Window: 8192 bytes (13-bit offset)
- Char codes: 510 (NC=0x1FE)
- Pre-tree codes: 19 (NT=0x13)
- Distance codes: 14 (NP=0x0E)
- Block-based with 16-bit block count

### Origin

Reverse-engineered from Artisoft LANtastic v6 INST6.EXE (1994).
Original framework by Knowledge Dynamics Corp, Canyon Lake, TX.
The KD wINSTALL toolkit was a commercial product sold to software
companies for creating DOS installer programs.

### License

GPLv3 — the crew 4free

verta1878 (lead), sysop/0, bob, evga, kiddo, wrench,
hexadecimal, DotMatrix, byte
