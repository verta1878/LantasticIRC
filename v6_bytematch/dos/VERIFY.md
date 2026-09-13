# INST6.EXE — Verified Original Binary

## Checksums
- MD5:    0f8dd6b2aa67112deb496bf0dee835c5
- SHA1:   d29b0a49369682a9c26a1aeb982b6e2255535761
- SHA256: 3eeca70d09ffe7e3f748ae69b9d7f8ad7bdfc4523e46db9393a2ca993db939e2
- Size:   435648 bytes

## Structure
- MZ header: 512 bytes
- Base segment: 119,105 bytes (KD3 overlay loader + CRT)
- Overlay area: 316,031 bytes (243 functions, 32 segments)
- Format: Knowledge Dynamics wINSTALL V3.22
- Copyright: (c) 1993 Knowledge Dynamics Corp

## Analysis
- 104 empty stub functions (3 bytes each)
- 136 hand-written ASM runtime functions (158K)
- ~3 compiled C functions (MSC 4.0, medium model)
- LZH decompressor verified: extracts 243/243 files from NOS archives

## MASM 5.1 Reconstruction
- All 243 functions disassembled (INST6OVL.ASM, 11,279 lines)
- First function byte-match confirmed (69 bytes, zero diffs)
- Full reassembly blocked by proprietary KD3 overlay linker format

## GPL Clean-Room Replacement
- See ../wdksdk/ for functionally equivalent GPL implementation
- Compiles with MSC 5.1 in DOSBox, zero errors
- NOSEXT.EXE: reads NOS archives, decompresses LZH
