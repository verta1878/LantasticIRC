# REDIR.EXE — Status

## Byte-Exact Rebuild: ✅ DONE
```
cat REDIR_HDR.BIN REDIR_CODE.BIN > REDIR.EXE
# Then append 79,176 zero bytes (BSS)
# Or: kdlink REDIR_HDR.BIN REDIR_CODE.BIN REDIR.EXE
SHA256: 43f5f87b7c7516a4b30c36056e9a407ec93db112be2d04f1d15b967df07a5e27
94,159 bytes
```

## Pipeline
1. `REDIR_HDR.BIN` (512b) — MZ header
2. `REDIR_CODE.BIN` (14,471b) — executable code
3. BSS: 79,176 bytes of zeros (appended)
4. `redir_full.asm` (7,171 lines) — full ndisasm disassembly
5. `redir_decomp.c` (3,372 lines) — Ghidra decompilation

## Binary
- **Size:** 94,159 bytes (14K code + 79K BSS)
- **SHA256:** 43f5f87b7c7516a4b30c36056e9a407ec93db112be2d04f1d15b967df07a5e27
- **Format:** Flat MZ DOS (no overlays)
- **Compiler:** Turbo C / Borland C (ADD SP pattern, 25/36 functions)
- **Type:** DOS TSR

## Structure
- Header: 512 bytes (MZ)
- Code: 14,471 bytes (36 functions)
- BSS: 79,176 bytes (zero-fill, network buffers)
- Entry: 036F:0010
- Functions: 36 (Ghidra found 45 including stubs)

## Ghidra Analysis
- 45 functions decompiled
- Largest: FUN_1000_1eb1 (1,910 bytes) — main init/command parser
- 39 INT 21h calls
- Loads SLM modules: REDCORE, PING, SHIM, SMB, NCP, MSG
- Config: BUFFERS, LOGINS, NCP_SUPPORT, SMB_SUPPORT, etc.
