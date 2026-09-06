# SERVER.EXE — Status

## Byte-Exact Rebuild: ✅ DONE
```
cat SERVER_HDR.BIN SERVER_CODE.BIN > SERVER.EXE
# Append 150,386 zero bytes (BSS)
SHA256: 3c9c1c6017f7bd404968527ad94e64b3463d75184e0949f48e9136885ccad422
169,099 bytes
```

## Binary
- **Size:** 169,099 bytes (18K code + 150K BSS)
- **SHA256:** 3c9c1c6017f7bd404968527ad94e64b3463d75184e0949f48e9136885ccad422
- **Format:** Flat MZ DOS (no overlays)
- **Compiler:** Turbo C / Borland C (ADD SP pattern)
- **Version:** LANtastic (R) Server V6.00/AI — SERVER V6.00.082/AI
- **Copyright:** (C) Copyright 1994 ARTISOFT Inc.
- **Type:** DOS TSR

## Structure
- Entry: 0452:0010
- Stack: 057B:0080
- Relocations: 0
- Functions: 3 prologues (Ghidra found 5 including stubs)
- INT 21h calls: 40
- Loads SLM modules: SRVCORE, FAST, ACLCH, FNB, FAT, RPL, AUDIT, LOGIN

## Files
- SERVER.EXE — verified original
- SERVER_HDR.BIN — MZ header (512b)
- SERVER_CODE.BIN — code (18,201b)
- server_full.asm — ndisasm disassembly (9,095 lines)
- server_decomp.c — Ghidra decompilation (201 lines)
