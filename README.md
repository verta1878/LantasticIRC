# LANtastic v6 — Source Code Recovery
## GPLv3 — the crew 4free

**Repo:** verta1878/LantasticIRC

### Current Status: INST6.EXE COMPILES AND LINKS

| Milestone | Status |
|-----------|--------|
| Ghidra decompile (717 functions, 49,772 lines) | ✅ |
| Identify framework: Knowledge Dynamics wINSTALL V3.22 | ✅ |
| Identify compiler: MSC 6.0a (NE format, can't run in DOSBox) | ✅ |
| Identify compression: LZH (LZSS+Huffman), NOT LZW | ✅ |
| Python LZH verifier: 243/243 files extracted | ✅ |
| Source cleanup: 665/717 Ghidra functions compile | ✅ |
| Hand-written: 95 helpers + 6 LZH + 3 NOS + 6 DOSIO | ✅ |
| DOSBox BCC 3.1 compile: 7/7 files, zero errors | ✅ |
| TLINK: INST6.EXE linked (47,226 bytes) | ✅ |
| Linker undefined symbols: 2 (FIWRQQ/FIDRQQ FPU stubs) | ✅ |
| Overlay structure analyzed (32 segments, 382KB) | ✅ |
| Byte-exact CRC match vs original (435,648 bytes) | ⬜ Pending |
| Run rebuilt INST6.EXE to extract NOS archives | ⬜ Pending |

### Build Files (analysis/INST6/BUILD/)

| File | Lines | Purpose |
|------|-------|---------|
| INST6.C | 53,200 | 665 Ghidra functions + 1,200 overlay stub bodies |
| HELPERS.C | 1,052 | 95 hand-written implementations |
| LZH.C | 365 | LZH decompressor |
| NOSARCH.C | 147 | NOS archive parser |
| DOSIO.C | 80 | DOS INT 21h via intdosx() |
| STUBS.C | 337 | Remaining stubs |
| LINKFIX.C | 135 | Cross-module symbol resolution + main() |
| MAKEFILE | — | BCC 3.1 build script |
| INST6.EXE | 47,226 | **Compiled output** |

### How to Build
```bash
export SDL_VIDEODRIVER=dummy
export SDL_AUDIODRIVER=dummy
# DOSBox 0.74 with Borland C++ 3.1
dosbox -conf compile.conf -exit
```

### Original vs Rebuilt
| | Original | Rebuilt |
|---|---------|---------|
| Size | 435,648 bytes | 47,226 bytes |
| Format | MZ + 32 overlay segments | Flat MZ |
| Compiler | MSC 6.0a | BCC 3.1 |
| Overlay mgr | Knowledge Dynamics custom | None (flat) |

The 388KB gap is the **overlay segment data** — 32 code segments loaded
dynamically by the KD overlay manager. Reconstructing overlays requires
the KD overlay linker or manual segment layout matching.

### Key Technical Findings
1. **MSC 6.0a can't run in DOSBox** — C1/C2/C3.EXE are NE (OS/2) format
2. **BCC 3.1 works** — NE but "bound", runs in DOSBox 0.74
3. **LZH not LZW** — NOS archives use LZSS+Huffman despite KD docs saying LZW
4. **1,200 overlay calls** — func_0x stubs span 1.1MB virtual address space
5. **Comment trick** — `/* reg = */ 0; /* broken` hides bad code in gcc but breaks BCC

### Documentation
- `docs/DOSBOX_DEBUG.md` — Full DOSBox compilation setup, all fixes applied
- `docs/RECOVERY_PLAN.md` — 4-phase plan + overlay structure analysis
- `docs/LANTASTIC_OVERVIEW.md` — LANtastic system architecture

### The Crew
verta1878 (lead), sysop/0, bob, evga, kiddo, wrench,
hexadecimal, DotMatrix, byte

*Artisoft, Inc. (Tucson, AZ) — Knowledge Dynamics Corp. wINSTALL V3.22*
