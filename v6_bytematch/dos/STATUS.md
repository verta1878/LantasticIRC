# INST6.EXE — Status

## Binary
- **File:** INST6.EXE (435,648 bytes)
- **SHA256:** 3eeca70d09ffe7e3f748ae69b9d7f8ad7bdfc4523e46db9393a2ca993db939e2
- **Format:** MZ DOS + 32 KD3 overlay segments
- **Framework:** Knowledge Dynamics wINSTALL V3.22 (c) 1993
- **Copyright:** Artisoft, Inc. — Artisoft Install V3.22.30 (c) 1994

## Runs
- DOSBox-X with Xvfb + xdotool — reaches LANtastic v6.00 SETUP MENU
- Needs INSTALL.DAT (184K script) + NOS6.001-004 on same drive
- EXE must be named INSTALL.EXE (script references this name)
- TUI app — full-screen, reads keystrokes via BIOS INT 16h
- More functionality unexplored (hardware-dependent install options)

## Code Analysis
- 243 functions in overlay area (316K)
- 104 empty stubs (3 bytes each)
- 136 hand-written ASM functions (158K) — KD3 runtime
- ~3 compiled C functions (MSC 4.0, medium model)
- 99% ASM, not compiled C

## Disassembly
- INST6OVL.ASM — all 243 functions (11,279 lines)
- Generated via ndisasm from original binary
- First function (69 bytes) verified byte-exact match via MASM 5.1

## Byte-Exact Rebuild
- **Blocked** — need KD3 overlay linker for 32-segment format
- Individual functions assemble to identical bytes with MASM 5.1
- Cannot link into same EXE structure without proprietary linker
- Verified original is the byte-exact binary (checksummed)

## Compiler
- MSC 4.0 (1986) for compiled C functions (BX register vars, memory IDIV)
- MASM 5.1 for ASM reconstruction
- NOT MSC 5.1/6.0a (different register allocation, instruction selection)

## GPL Replacement
- See ../../wdksdk/ — extracts 243/243 files from NOS archives
- LZH decompressor + NOS reader, compiles with MSC 5.1 and gcc
