# DOSBox Compilation & Debug Setup
## INST6.EXE Rebuild — the crew 4free

---

### Current Status (2026-09-05)
```
INST6.EXE COMPILED AND LINKED (BCC 3.1)
  Size: 47,226 bytes (base segment, no overlays)
  Original: ~436,000 bytes (base + 32 overlay segments)
  Compile errors: 0
  Link undefined: 2 (FIWRQQ/FIDRQQ — MSC FPU runtime, harmless)
  EXE format: Valid MZ DOS executable
```

---

### MSC 6.0a Status: BLOCKED — UNBOUND OS/2 INSTALLATION

Our MSC 6.0a installation is the **unbound OS/2-only version**.

MSC 6.0 compiler passes (C1, C2, C3) are NE (OS/2) executables. There is
only ONE set — no "real-mode" version exists. These NE executables are 
designed to be **bound** with BIND.EXE + API.LIB to create dual-mode 
executables that run under BOTH OS/2 and DOS.

**Our installation is missing BIND.EXE and API.LIB.** Without binding,
the NE executables only run under OS/2. The MZ stub in our C1.EXE just
prints "This program cannot be run in DOS mode" and exits.

**Binary analysis of C1.EXE:**
```
Offset 0x00: MZ stub (prints error, exits — NOT a functional DOS program)
Offset 0x4E: "This program cannot be run in DOS mode.\r\n$"  
Offset 0x80: NE header (OS/2 16-bit protected mode code)
```

**This is NOT a DPMI issue.** NE executables use the OS/2 Family API (FAPI),
not DPMI. `[dos] dpmi=true` does not help. DPMI is for 32-bit DOS extender
programs (like DOS4GW games). MSC 6.0a uses 16-bit OS/2 API.

**To fix MSC 6.0a, we need ONE of:**
1. **BIND.EXE + API.LIB** — bind the NE executables to create DOS-runnable versions
2. **A bound MSC 6.0a installation** — one where the compiler passes already work in DOS
3. **OS/2 1.x/2.x in a VM** — run the NE executables natively
4. **MSC 5.1** — older version, different compiler, pure MZ executables

**Toolchain status:**
| File | Format | Status |
|------|--------|--------|
| CL.EXE | MZ | ✅ Works (but calls C1.EXE) |
| C1/C1L/C2/C2L/C3/C3L.EXE | NE (OS/2, unbound) | ❌ Needs binding |
| QCC.EXE | NE (OS/2, unbound) | ❌ Needs binding |
| LINK.EXE | MZ | ✅ Works |
| NMAKE.EXE | MZ | ✅ Works |
| BIND.EXE | — | ❌ MISSING |
| API.LIB | — | ❌ MISSING |
| BCC.EXE (BC31) | NE (bound) | ✅ Works in DOSBox |
| TCC.EXE (TC201) | MZ | ✅ Works |

---

### BCC 3.1 Build (WORKING)

**Compiler:** Borland C++ 3.1 in DOSBox 0.74
**Why BCC works:** BCC.EXE is a PROPERLY BOUND NE executable — it has a
functional DOS stub, not just an error message. Borland shipped bound versions.

#### Compile
```bash
export SDL_VIDEODRIVER=dummy
export SDL_AUDIODRIVER=dummy
dosbox -conf compile.conf -exit
```
`bcc -c -ml -w- -IC:\BC31\INCLUDE FILENAME.C`

#### Link
`tlink /x /c C0L.OBJ INST6 HELPERS LZH NOSARCH DOSIO STUBS LINKFIX,INST6.EXE,,CL.LIB`

---

### All 19 Fixes Applied

| # | Issue | Fix | Count |
|---|-------|-----|-------|
| 1 | MSC NE unbound | Use BCC 3.1 | — |
| 2 | Unterminated `/*` eating `#endif` | `/* reg removed */` | 740 |
| 3 | Non-static definitions | Add `static` | 468 |
| 4 | void/int return mismatch | void→int | 20 |
| 5 | Forward decls inside `#if 0` | Move before first `#if 0` | 468 |
| 6 | BCC `()` = void | Explicit param lists | 8 |
| 7 | Arg count mismatch | Match call-site counts | 5 |
| 8 | Multi-line definition | Manual fix FUN_3000_8d68 | 1 |
| 9 | Nonportable pointer | `(unsigned int)` casts | 3 |
| 10 | func_0x stubs undefined | Add `{ return 0; }` bodies | 1,200 |
| 11 | Irreconcilable callers | Disable 10 functions | 10 |
| 12 | Broken `#if 0` nesting | Manual cleanup | 1 |
| 13 | param_4/param_5 undefined | Replace with `0` | 1 |
| 14 | `_main` undefined | main() in LINKFIX.C | 1 |
| 15 | Ghidra pseudo-ops | ROUND/out/CARRY1/SBORROW2 stubs | 4 |
| 16 | `static` blocks linking | Remove from 93 cross-refs | 93 |
| 17 | Missing FUN_ definitions | 40 stubs in LINKFIX.C | 40 |
| 18 | lzh_extract/raw_copy | Stubs in LINKFIX.C | 2 |
| 19 | FIWRQQ/FIDRQQ | Unresolved (MSC FPU, harmless) | 2 |

---

### Path to Byte-Exact

```
[DONE] Source compiles (BCC 3.1)
[DONE] INST6.EXE links (47,226 bytes)
[BLOCKED] MSC 6.0a (unbound OS/2 installation, need BIND.EXE + API.LIB)
[TODO] Bind or replace MSC 6.0a
[TODO] Recompile with MSC for matching code generation
[TODO] KD3 overlay linker for 32-segment structure
[TODO] Compare .text, iterate to CRC match
[TODO] Run rebuilt INST6.EXE to extract 243 NOS files
```

### MSC 5.1 — WORKING IN DOSBOX (2026-09-05)
Downloaded from archive.org (msc-51). Pure MZ executables.
CL, C1, C1L, C2, C3 all run in DOSBox 0.74.
Uses MSC 6.0a INCLUDE and LIB directories.
TINY.C compiled successfully — first MSC OBJ created.

### MSC 5.1 FULL BUILD (2026-09-05)
- 7/7 files compiled with MSC 5.1 CL.EXE, zero errors
- INST6.C stripped to 4,453 lines (removed #if 0 blocks + func_0x stubs)
- Linked with MSC 5.1 Overlay Linker v3.65 + LLIBCR.LIB
- INST6.EXE: 33,799 bytes (valid MZ DOS)
- Unresolved: func_0x overlay stubs (expected, stripped from slim build)

### Code Generation Comparison (2026-09-05)
- MSC 5.1 build: 211 functions, 1 matches original exactly (100%)
- MSC 5.1 vs MSC 6.0a: fundamentally different instruction selection
- Hybrid MSC 5.1 C1 + MSC 6.0a C2: INCOMPATIBLE intermediate formats
- MSC 6.0a C2.EXE is BOUND (runs in DOSBox) but C1/C3 are NE (blocked)
- Byte-exact requires ALL passes from MSC 6.0a
- Need: OS/2 VM, or find bound C1/C3, or find MSC 6.0a disk 7 (has BIND+API)

### MSC 6.00 TOOLCHAIN WORKING (2026-09-05)
Downloaded from archive.org msc-60-03 (12 ZIP files).
SZDD decompressor fixed: rpos=4078 not 4080.
CL/C1/C2/C3 all pure MZ DOS executables.
INST6.C compiled: 34,478 bytes OBJ, zero errors.
BIND.EXE + API.LIB available for binding NE executables.
Path: toolchain/lantirc6/BUILDROOT/msc60/bin/

### Code Match Analysis (2026-09-05)
- MSC 6.00 build: 30,145 byte EXE, 183 functions
- 1/183 functions match original byte-for-byte (100%)
- The matching function has no far calls — pure register ops
- Non-matching functions diverge at byte 3 (after prologue)
- ROOT CAUSE: Ghidra decompilation produces semantically equivalent
  but structurally different C code. Different variable names,
  register allocation, instruction selection → different codegen.
- BYTE-EXACT MATCH IS NOT POSSIBLE from decompiled source.
- Original .C source files are needed for byte-exact rebuild.
- FUNCTIONAL correctness verified via Python LZH (243/243 files).

### COMPILER IDENTIFIED: MSC 5.x (NOT 6.0a!) (2026-09-05)
Original INST6.EXE CRT startup: CLD (0xFC) = MSC 5.x pattern.
No FIWRQQ/FIDRQQ symbols = NOT MSC 6.x.
MSC 5.1 builds: 1 exact match, 1 partial (70%+), 209 no match.
MSC 6.00 builds: 1 exact match, 0 partial.
MSC 5.1 is the correct compiler.

Root cause of low match rate: Ghidra decompilation produces structurally 
different C code than the original. Same compiler + different source = 
different binary. Byte-exact requires original source, not decompiled source.

### MSC 6.00 SZDD Fix
Ring buffer initial position: rpos=4078 (N-F-2 = 4096-16-2).
Was using rpos=4080 (N-F = 4096-16) — off by 2.
Downloaded from archive.org msc-60-03 (12 ZIP disks).

### MASM 5.1 BYTE-EXACT ASM APPROACH (2026-09-05)
Original INST6.EXE overlay area is 99% hand-written assembly (136 functions, 158K).
Only ~2 functions are compiled C. Ghidra decompilation to C can never byte-match.

MASM 5.1 downloaded from archive.org. Assembles in DOSBox.
First function (69 bytes at ovl+063F1) = EXACT BYTE MATCH confirmed.
MSC 4.0 also downloaded (uses BX for register vars, matching original patterns).

Approach: ndisasm each function → write MASM source → assemble → verify.
243 functions total (104 empty stubs + 136 ASM + ~3 compiled C).

### Toolchain Summary
| Tool | Version | Source | Status |
|------|---------|--------|--------|
| MASM | 5.1 | archive.org | WORKING, byte-exact confirmed |
| MSC  | 4.0 | archive.org | WORKING, pure MZ DOS |
| MSC  | 5.1 | archive.org | WORKING, pure MZ DOS |
| MSC  | 6.00 | archive.org msc-60-03 | WORKING, pure MZ DOS |
| BCC  | 3.1 | buildroot | WORKING |
| LINK | 3.65 (MSC 5.1) | archive.org | WORKING |
