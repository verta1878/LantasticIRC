# LANtastic v6 DOS Recovery Plan
## GPLv3 — the crew 4free

---

## Phase 1: INST6.EXE — Byte-Exact Rebuild (CURRENT)

### 1A. Ghidra Decompilation ✅
- [x] Binary identified: Knowledge Dynamics wINSTALL V3.22 + Artisoft (1994)
- [x] Compiler: MSC 6.0 (have MSC 6.0a toolkit)
- [x] Overlay structure: 32 segments, 120KB base + 316KB overlay
- [x] Ghidra decompile: 717 functions, 49,772 lines
- [x] KD3 SDK documented (kd3sdk.zip)
- [x] Call chain mapped: @DECOMPRESS → RR header → LZH decompress
- [x] CRT functions identified (stricmp, strlen, strcmp, strupr, strrev, memset, strpbrk)

### 1B. LZH Decompressor ✅
- [x] Algorithm: LZH (LZSS + Huffman), NOT LZW
- [x] Parameters: 8K window, 510 Huffman entries, 14 distance codes, 12-bit tree
- [x] Python verifier: 243/243 files extracted from NOS6.001-004
- [x] Clean C implementation: lzh.c (362 lines, 6 functions)

### 1C. Cleanup & Compile — 665/717 (92%)
- [x] Type replacements (Ghidra → C types, word-boundary safe)
- [x] 16-bit pattern fixes (unaff_, in_, extraout_, CONCAT, DAT_)
- [x] Overlay call stubs (1,200 func_0x declarations)
- [x] Hardware patterns (halt_baddata, in(), LOCK, UNLOCK, POPCOUNT, SUB_)
- [x] 665/717 functions compile with zero errors
- [x] 89 stub functions cover remaining 52 disabled
- [x] MAKEFILE for MSC 6.0a ready
- [ ] Compile with MSC 6.0a in DOSBox-X
- [ ] Fix MSC-specific errors (16-bit types, far pointers)

### 1D. Overlay Reconstruction
- [ ] Reverse-engineer Knowledge Dynamics overlay loader from entry point
- [ ] Identify overlay segment table format
- [ ] Recreate overlay linking step

### 1E. Byte Match
- [ ] Compare .text sections: our build vs original
- [ ] Fix compiler flags (optimization, memory model)
- [ ] CRC match original INST6.EXE

---

## Phase 2: Core LANtastic Binaries (blocked on Phase 1E)
- [ ] Run byte-exact INST6.EXE to extract 243 files from NOS archives
- [ ] Ghidra decompile: SERVER.EXE, REDIR.EXE, NET.EXE, NET_MGR.EXE
- [ ] Same cleanup/compile/match cycle per binary

## Phase 3: Third-Party Library Resolution
- [ ] CRT → strip, document as MSC 6.0a dependency
- [ ] NDIS → GPL-compatible source (GitHub/Samba)
- [ ] NetBIOS → GPL-compatible (Samba GPLv3)

## Phase 4: Licensing & Release
- [ ] GPLv3 permission
- [ ] Release to verta1878/LantasticIRC

---

## Source Files (analysis/INST6/)

| File | Lines | Functions | Purpose |
|------|-------|-----------|---------|
| INST6_all.c | 51,153 | 665 active | Ghidra-cleaned main source |
| stubs.c | 337 | 89 | Stub bodies for disabled functions |
| lzh.c | 362 | 6 | LZH decompressor |
| nos_archive.c | 147 | 3 | NOS archive parser |
| dos_io.c | 145 | 6 | DOS INT 21h wrappers |
| app_helpers.c | 788 | 64 | Hand-written helpers |
| MAKEFILE | — | — | MSC 6.0a build script |
| INST6_decompiled.c | 49,772 | 717 | Raw Ghidra reference |
| lzh_decompress.py | — | — | Python LZH verifier |
| CALL_CHAIN.md | — | — | Function mapping |

---

## Overlay Structure Analysis (2026-09-05)

### Original INST6.EXE Layout
```
0x0000 - 0x01FF  MZ header (512 bytes)
0x0200 - 0xD1FF  MZ code (119,296 bytes) — overlay loader + base code
0xD200 - 0x6A5BF Overlay data (381,888 bytes) — 32 segments
Total: 435,648 bytes
```

### Ghidra Segments → Overlay Mapping
| Ghidra Seg | Functions | Purpose |
|------------|-----------|---------|
| 1000 | 75 | Overlay loader, hardware I/O, FPU |
| 2000 | 91 | DOS interface, file handlers |
| 3000 | 262 | Core installer: LZH, CRC, script engine |
| 4000 | 214 | UI: dialogs, menus, screen drawing |
| 5000 | 70 | Archive extraction, file enumeration |

### func_0x Overlay Calls
- 1,200 unique inter-segment calls
- Address range: 0x00000099 — 0x0010FB90 (~1.1MB virtual space)
- These are resolved at runtime by the KD overlay manager

### Path to Byte-Exact
1. Map each func_0x address to its overlay segment number
2. Reconstruct the overlay table at 0xD200
3. Place each segment's code at the correct file offset
4. Add the KD overlay manager stub (from MZ base code)
5. Compare CRC against original
