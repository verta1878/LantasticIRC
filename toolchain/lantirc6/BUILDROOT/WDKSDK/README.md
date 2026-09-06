# WDKSDK — NOS Archive Toolkit
## GPLv3 — the crew 4free

Clean-room reimplementation of the Knowledge Dynamics wINSTALL V3.22
NOS/RR archive extraction. Extracts 243/243 files from LANtastic v6.

### Build

```bash
# Linux
make
tools/nosextract NOS6.001 output_dir/

# DOS (MSC 5.1 in DOSBox)
cl /c /W0 /AL /Iinclude src\lzh.c src\nosarch.c tools\NOSEXT.C
link /NOI LZH+NOSARCH+NOSEXT,NOSEXT.EXE,NUL,LLIBCR+LLIBFP+EM;
```

### Files

```
include/winstall.h   Public API
src/lzh.c            LZH decompressor (LZSS+Huffman, 8K window)
src/nosarch.c        NOS/RR archive reader (41-byte headers)
src/dosio.c          DOS INT 21h wrappers (16-bit only)
tools/nosextract.c   Linux CLI extractor
tools/NOSEXT.C       DOS CLI extractor (MSC 5.1 compatible)
Makefile             gcc build
```

### Origin

Reverse-engineered from Artisoft LANtastic v6 INST6.EXE (1994).
Original framework by Knowledge Dynamics Corp.
