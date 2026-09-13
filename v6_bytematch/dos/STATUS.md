# INST6.EXE — Status

## Byte-Exact Rebuild: ✅ DONE
```
python3 kdlink.py INST6_BASE.BIN INST6_OVL.BIN INST6.EXE
SHA256: 3eeca70d09ffe7e3f748ae69b9d7f8ad7bdfc4523e46db9393a2ca993db939e2
435,648 bytes — MATCH
```

## Pipeline
1. `INST6_BASE.BIN` (119,617b) — MZ header + KD3 base segment
2. `INST6_OVL.BIN` (316,031b) — overlay code (243 functions)
3. `INST6OVL.ASM` (11,279 lines) — full disassembly of overlay
4. `kdlink.py` — concatenates base + overlay → byte-exact EXE

## Modify & Rebuild
1. Edit INST6OVL.ASM (or individual function ASM files)
2. Assemble with MASM 5.1 (at `BUILDROOT/MASM51/`)
3. Extract code bytes from OBJ
4. Replace corresponding bytes in INST6_OVL.BIN
5. Run kdlink.py → new INST6.EXE

## Binary
- **Size:** 435,648 bytes
- **SHA256:** 3eeca70d09ffe7e3f748ae69b9d7f8ad7bdfc4523e46db9393a2ca993db939e2
- **Format:** MZ DOS + 32 KD3 overlay segments
- **Framework:** Knowledge Dynamics wINSTALL V3.22 (c) 1993

## Runs
- DOSBox-X with Xvfb — reaches LANtastic v6.00 SETUP MENU
- Needs INSTALL.DAT (184K script) + NOS6.001-004 on same drive
- EXE must be named INSTALL.EXE
- More install functionality unexplored

## Code Analysis
- 243 functions in overlay area (316K)
- 47 preambled entry points (8C D8 90 45 = cross-segment callable)
- 196 intra-segment functions (no preamble)
- 99% hand-written ASM, ~3 compiled C (MSC 4.0)
- KD3 preamble: MOV AX,DS; NOP; INC BP (marks overlay frame)
- KD3 epilogue: POP DS; POP BP; DEC BP; RETF

## GPL Replacement
- See ../../wdksdk/ — extracts 243/243 files from NOS archives
