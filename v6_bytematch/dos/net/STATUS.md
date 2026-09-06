# NET.EXE — Status

## Byte-Exact Rebuild: ✅ DONE
```
cat NET_HDR.BIN NET_CODE.BIN > NET.EXE
SHA256: d5999108073221bcd77478b5d5a776be18df670f474149332f8a411ec1fe07b0
20,149 bytes
```

## Binary
- **Size:** 20,149 bytes (19,637 code + 0 BSS)
- **SHA256:** d5999108073221bcd77478b5d5a776be18df670f474149332f8a411ec1fe07b0
- **Format:** Flat MZ DOS (no overlays)
- **Compiler:** 100% hand-written ASM (ZERO function prologues)
- **Version:** LANtastic (R) Connection Manager V6.00 — NET V6.00.27
- **Copyright:** (C) Copyright 1994 ARTISOFT Inc.

## Structure
- Entry: 04AE:0010
- Stack: 06DB:0080
- Relocations: 0
- Functions: 0 standard prologues (all hand-written ASM)
- INT 21h calls: 150
- Ghidra: only 1 function detected (entry stub)

## Commands
ATTACH, AUDIT, CHANGEPW, CLOCK, DETACH, EXPAND, FLUSH,
INDIRECT, LOGIN, LOGOUT, MESSAGE, PAUSE, POSTBOX, PRINT,
RECEIVE, SHUTDOWN, SLOGINS, STREAM, STRING, TERMINATE,
UNLINK, UNUSE, USE, HELP

## Files
- NET.EXE — verified original
- NET_HDR.BIN — MZ header (512b)
- NET_CODE.BIN — code (19,637b)
- net_full.asm — full ndisasm disassembly (9,134 lines)
