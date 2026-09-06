# AILANBIO.EXE — Status

## Byte-Exact Rebuild: ✅ DONE
```
cat AILANBIO_HDR.BIN AILANBIO_CODE.BIN > AILANBIO.EXE
SHA256: 0f2cb8f956000243ea57334aa7f7451e13d39cc1064c0ec6b2b4b2953b8872a1
21,603 bytes
```

## Binary
- **Size:** 21,603 bytes (21,091 code, 0 BSS)
- **SHA256:** 0f2cb8f956000243ea57334aa7f7451e13d39cc1064c0ec6b2b4b2953b8872a1
- **Format:** Flat MZ DOS (no overlays)
- **Compiler:** 100% hand-written ASM (zero prologues)
- **Version:** Adapter Independent AI-LANBIOS(R) V4.06.10
- **Copyright:** (C) Copyright 1993 ARTISOFT Inc.
- **Type:** DOS TSR — NETBIOS layer

## Structure
- Entry: 0506:0010
- Stack: 06F4:0080
- Relocations: 0
- INT 21h: 28, INT 2Fh: 7, INT 5Ch: 2
- CLI/STI: 37/32 (heavy interrupt handling)
- Ghidra: 1 function (entry) — 100% ASM

## Role
AILANBIO provides the NETBIOS interface between DOS and LANtastic
network drivers. Must be loaded before REDIR.EXE and SERVER.EXE.
Hooks INT 5Ch (NETBIOS), INT 2Fh (multiplex).

## Config Switches
ACK_TIMEOUT, ADAPTER, FORCE_ACK_MODE, INITIAL_SEND_SIZE,
IPX_ROUTING, IPX_SIZE, KEEP_ALIVE_TIMEOUT, MAX_NAMES,
MAX_NCBS, MAX_SESSIONS, POST_LEVEL, RETRY_PERIOD, RUN_BURST
