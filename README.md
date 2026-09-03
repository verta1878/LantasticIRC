# LANtastic v6 — Source Code Recovery
## GPLv3 — the crew 4free

### What Is This?
Source code recovery of Artisoft LANtastic v6.x DOS peer-to-peer networking software.
Ghidra decompilation targeting exact byte match with original binaries.

### Project Status
**Phase 0 — Binary Extraction**
- V6 floppy images (4 disks) acquired
- 232 files inventoried inside NOS.001-004 archives
- Artisoft "RR" archive format partially reverse-engineered
- Blocker: custom compression in NOS archives needs decompressor

### Directory Structure

```
v6_binorg/        Original v6 binaries (pending extraction from NOS archives)
v6_bytematch/     Ghidra decompiled source (exact byte match target)
docs/             Technical documentation, recovery plans
attic/            Old files, backups
```

### Key Binaries (inside NOS archives)

| Binary | Description |
|--------|-------------|
| SERVER.EXE | LANtastic file/print server |
| REDIR.EXE | Client redirector |
| NET.EXE | NET command-line interface |
| NET_MGR.EXE | Network manager |
| AILANBIO.EXE | NetBIOS transport |
| LANBIOS.EXE | NetBIOS driver |
| LANCACHE.EXE | Disk cache |
| LED.EXE | LANtastic Enhanced Display |
| LANCHECK.EXE | Network diagnostics |

### Third-Party Libraries
Statically-linked code in the binaries that is NOT Artisoft's:

- **C Runtime (CRT)** — Borland or Microsoft C library (malloc, printf, startup).
  Will be identified and tagged as imports, not included in recovered source.
- **NDIS Wrapper** — Microsoft Network Driver Interface Spec implementation.
  Possible sources: Microsoft DDK, or open-source (GitHub).
  Needs license verification.
- **NetBIOS** — NetBIOS protocol implementation.
  Possible sources: Microsoft, open-source (GitHub), or Samba project (GPLv3).
  Samba's NetBIOS implementation is GPLv3-compatible.
- **Compiler toolchain** — TBD, will identify from binary headers once extracted.

Only Artisoft application code goes GPLv3. Third-party library code will be
stripped and documented as external dependencies.

### Licensing
- **Target: GPLv3** — need to verify/obtain license permission
- Third-party components will use their original licenses or
  be replaced with GPL-compatible implementations (Samba, open-source NDIS)
- CRT functions excluded from recovery (linked at build time)

### NOS Archive Format
Artisoft proprietary "RR" compression format:
- Magic: `RR\x01`
- Authors: Eric Jon Heflin, Larry Hastings, Darryl Rust
- 20-byte record headers with compressed/uncompressed sizes
- Custom LZSS variant (not zlib, not standard LZH)
- Decompressor exists in INSTALL.EXE (Ghidra decompiled, 712 functions)

### Build Requirements
- TBD — likely Borland C 3.x/4.x or Microsoft C 6.0 (era-correct for 1994)

### The Crew
verta1878 (lead), sysop/0, bob, evga, kiddo, wrench,
hexadecimal, DotMatrix, byte

### Original Developer
Artisoft, Inc. (Tucson, AZ) — founded 1983, LANtastic released 1989
