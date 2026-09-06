# KD3SDK — Knowledge Dynamics Overlay Format + Linker
## GPLv3 — the crew 4free

Reverse-engineered format spec and linker for the KD3 wINSTALL V3.22
overlay executable format (Artisoft LANtastic v6, 1993-1994).

### Source Files
```
kdlink.c           Overlay linker (C, compiles on DOS and Linux)
KD3_FORMAT.md      Overlay format specification
INST6OVL.ASM       Full disassembly — 243 functions (11,279 lines)
```

### Data Files (split from original INST6.EXE for rebuild)
```
INST6_BASE.BIN     MZ header + KD3 base segment (119,617 bytes)
INST6_OVL.BIN      Overlay code blob (316,031 bytes)
```
INST6OVL.ASM is the human-readable source for INST6_OVL.BIN.
INST6_BASE.BIN is the KD3 runtime (overlay loader, not yet disassembled).

### Build
```bash
gcc -o kdlink kdlink.c                             # Linux
cl /W0 kdlink.c                                    # DOS (MSC 5.1)
```

### Rebuild INST6.EXE (byte-exact)
```bash
kdlink INST6_BASE.BIN INST6_OVL.BIN INST6.EXE
# SHA256: 3eeca70d09ffe7e3f748ae69b9d7f8ad7bdfc4523e46db9393a2ca993db939e2
# 435,648 bytes
```

### Modify & Rebuild
1. Edit functions in INST6OVL.ASM
2. Assemble with MASM 5.1
3. Extract code bytes, replace INST6_OVL.BIN
4. kdlink INST6_BASE.BIN INST6_OVL.BIN INST6.EXE
