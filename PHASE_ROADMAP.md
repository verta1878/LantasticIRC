# LANtastic v6.0 DOS NOS Source Recovery — Phase Roadmap

## THE CREW: verta1878 (lead), sysop/0, bob, evga, kiddo, wrench, hexadecimal, DotMatrix, byte
## REPO: https://github.com/verta1878/LantasticIRC
## LICENSE: GPLv3
## DECOMPILER: Ghidra 11.3.2

---

## Phase A — v6.0 DOS NOS Recovery — ALL COMPLETE ✅

### A1: Environment Verification ✅
- DOSBox-X boots under Wine headless (SDL_VIDEODRIVER=dummy, no Xvfb needed)
- SLIRP v4.8.0 initialized, NE2000 Base=0x300 irq=3
- COMMAND.COM at 0x9F65, 608KB free conventional memory
- PSP[0x0A:0x0D] override to 0070:0000 confirmed

### A2: Core Stack — FUNCTIONAL ✅
All 5 core binaries load as TSRs and verified functional:
- NE3.EXE (9KB) → NIC driver, hooks INT 21h
- AILANBIO.EXE (22KB) → LANA BIOS, hooks INT 5Ch
- REDIR.EXE (94KB) → DOS redirector (blocks local file I/O = working!)
- SERVER.EXE (169KB) → file/print server
- NET.EXE (20KB) → command-line tool (30+ commands)
- 1 shell init = all TSRs stable 13+ seconds
- DIAG.COM confirms: before stack LANTASTIC=NO/NETBIOS=NO/INT21=F000
- After stack: REDIR blocks file creation = INT 21h redirector active

### A3: LANBIOS Variants ✅
NOT variants — completely separate codebases (0-3% code overlap):
- LANBIOS.EXE (19KB) V3.00 — Artisoft AE-1 (2Mbps proprietary), 78 relocs
- LANBIOS2.EXE (21KB) V3.00 — Artisoft AE-2 (10Mbps Ethernet), 116 relocs, DIP switch
- LANBIOS3.EXE (26KB) V3.00 — Artisoft AE-3/NodeRunner, 151 relocs, auto-detect
- AILANBIO.EXE (22KB) V4.06 — Adapter Independent, 0 relocs, v6.0 default

### A4: NIC Drivers ✅
10+3 drivers analyzed. Two architecture groups + runtime tested:

Ethernet (self-relocating, 0 relocs):
- NE3 ✅ works fully with DOSBox-X NE2000
- NEX000 ✅ loads, graceful exit (hw not found)
- WD8003 ✅ loads, graceful exit (hw not found)
- 3C503MM ✅ loads, graceful exit (hw not found)
- 3COM507 ✅ loads, 3COM523 ✅ loads

ARCnet/Special (standard MZ, 30-38 relocs):
- ARCNET ✅, SMCARC ✅, TCARC ✅, TLINK ✅, CSPPORT ✅ (V4.18.25, largest)

Reclassified from A5 (NIC drivers, not tools):
- AEX.EXE = AE2.EXE (byte-identical, md5 confirmed) V4.02
- NR.EXE V4.04 — NodeRunner/SI, self-relocating

### A5: Support Tools ✅
10/11 tools load as TSRs. LANCACHE crashes (needs memory config).
- LANCHECK, LANPUP, ALONE, LED, INITCTL, INITCTLW, NMF, NRMOVE, NRSETUP, NBSETUP
- INITCTL = Borland C++ 1991. NMF = Windows NE executable.

### A6: COM Drivers ✅
All 8 load:
- NETBIND (MS LAN Manager v2.1), DRVR8530 (1987 oldest binary)
- IPXODI/LSL/NRODI/ODINSUP (Novell ODI stack — third-party, NOT in NOS archives)
- PATCC (Xircom NIC driver V4.01), PROBE (353-byte NE2000 diagnostic)

### A7: Installer & Archive Format ✅
- INSTALL.EXE (435KB) = Windows 3.x NE binary (Knowledge Dynamics wINSTALL V3.22.30)
- INSTALL.DAT (184KB) = wINSTALL script (@DefineProject language)
- NOS archive format: magic "RR\x01", header size 41 bytes, filename at +0x1A (15-byte padded)
  - +08: uint32 compressed data size
  - +0C: uint32 uncompressed file size
  - Compression: proprietary (Knowledge Dynamics, not yet reversed)
- NOS.001: 29 files, NOS.002: 121 files, NOS.003: 56 files, NOS.004: 33 files
- Total: 239 files across 4 NOS archives
- toolchain/nosextract.py: lists/verifies archives (186/239 exact size match vs bin/)
- 5 bin/ files NOT in NOS: Novell ODI stack (third-party) + PROBE

### A8: Binary Analysis & Bytematch ✅
66 executables: 43 DOS MZ, 14 Windows 3.x NE, 1 OS/2 NE, 8 COM
- Core DOS stack = hand-written ASM (no compiler strings)
- Borland C++ 3.1: INITCTL (71 functions discovered via rebrew), ARTIDOCS, RTM
- Microsoft C: SETNAME, PROTMAN
- No FBOV overlays in any binary
- NOS bytematch: 196/201 bin/ files in NOS archives
- docs/BINARY_CLASSIFICATION.md — full classification document
- docs/INITCTL_ANALYSIS.md — BC3.1 code map (_main at 0x02C2, 27% user code)
- decompile/initctl/ — rebrew 2.6.0 project (Python 3.13, borland-3.1 toolchain)

### A9: Protocol Documentation ✅
- docs/PROTOCOL.md — full protocol documentation
- TSR chain: NE3→AILANBIO→REDIR→SERVER→NET
- INT 21h/2Fh/5Ch hook counts per binary
- NET.EXE 30+ commands (USE, LOGIN, SHOW, SHARE, QUEUE, etc.)
- Packet format: raw 802.3/802.2 LLC, NetBIOS-based
- Architecture diagram from NET down to SLIRP

---

## Phase B — Documentation Extraction — COMPLETE ✅
63 doc files extracted and organized:
- docs/v6_help/ — 13 help files (NET.HLP 87KB, WNET_MGR.HLP 352KB, WAMAIL.HLP 549KB)
- docs/v6_nics/ — 11 NIC driver docs
- docs/v6_txt/ — 34 tech notes (!A-I.TXT through !UPS.TXT)
- docs/v6_readme/ — 2 README files

---

## Phase D — DOSBox-X Emulation — COMPLETE ✅

### Build: DOSBox-X from source (commit 0e5c2f9, Jun 2026)
Cross-compiled for Windows x86_64 on Linux. 38MB PE32+ static binary.
docs/BUILD_DOSBOXX_CROSSCOMPILE.md — full build guide

### 9 DOSBox-X Patches:
1. ne2000.cpp: NE2000 loopback fix (CR.stop + MAC filter)
2. shell_misc.cpp: INT 21h stub at 0x0070 (upstream 0x0050 bug)
3. shell.cpp: PSP[0x0A:0x0D] = 0070:0000 (children inherit conventional-memory CS)
4. callback.cpp: INT 6 skip (reg_eip += 2, non-LTO workaround)
5. drive_local.cpp: Code page 0 → 437 fallback (ROOT CAUSE of mount invisibility!)
6. drive_local.cpp: GetFullPathNameA basedir resolve (Wine path compat)
7. ne2000.cpp: ASIC offsets 0x01-0x0E mirror data register (NEX000 compat)
8. ne2000.cpp: WD8003 register remap (8390 at +0x10, board ID at +0x00)
9. dosbox.cpp + ne2000.cpp: nictype= config option (ne2000/wd8003/3c503)

### Standalone packages:
- toolchain/ne2000-compat/ — drop-in ne2000.cpp + ne2000.h + README.md
- toolchain/slirp-compat/ — glib compat layer + libslirp.a
- toolchain/dostools/ — DIAG.COM, CHK2F.COM, MKFILE.COM, PSPDUMP.COM, MEMWASTE.COM

### Key discoveries:
- SDL_VIDEODRIVER=dummy — headless Wine, no Xvfb needed
- Code page 0 → mount directories appear empty (one-line fix)
- PSP[0x0C] = 0xF000 not 0x0070 — EXEC copies parent's PSP, not calling CS

---

## Phase C — v8.01 Recovery (NOT STARTED)
Blocked: needs v8.01 disk images uploaded

---

## Remaining Work (flat)

1. Ghidra custom MZ loader for PSP[0x0C] self-relocation scheme
2. Ghidra decompile NE3.EXE (8KB, hand ASM)
3. Ghidra decompile AILANBIO.EXE (22KB, hand ASM)
4. Ghidra decompile REDIR.EXE (94KB, hand ASM)
5. Ghidra decompile SERVER.EXE (169KB, hand ASM)
6. Ghidra decompile NET.EXE (20KB, hand ASM)
7. rebrew byte-exact INITCTL.EXE against BC3.1 (project init done, needs Docker for compile-and-compare)
8. rebrew byte-exact ARTIDOCS.EXE against BC3.1
9. rebrew byte-exact RTM.EXE against BC3.1
10. Reverse NOS compression algorithm (Knowledge Dynamics wINSTALL)
11. Build nosextract decompressor (extract from NOS.001-004)
12. NEX000 full NE2000 Novell PROM detection emulation
13. WD8003 shared memory window emulation
14. 3C503 gate array emulation at 0x400+
15. LANCACHE memory config fix (only A5 binary that crashes)
16. v8.01 disk extraction and binary inventory
17. v8.01 stack load testing in DOSBox-X
18. v8.01 vs v6.0 binary diff / protocol changes
19. Win3x LANtastic components analysis (14 NE binaries)
20. OS/2 MTAEXEC.EXE analysis
21. Artisoft Exchange mail/fax system analysis (56 DLLs in NOS.003)
22. NOS archive CRC verification
23. INSTALL.DAT wINSTALL script parser
24. Modern TCP/IP port of NetBIOS layer

## Tools Available
- rebrew 2.6.0 (Python 3.13 venv at /tmp/rebrew-venv/bin/rebrew)
- ReC98 codegen rules (cloned at /tmp/ReC98/)
- devroomm VROOMM overlay docs + TC3.0 FLIRT sigs (cloned at /tmp/devroomm/)
- DOSBox-X cross-compile toolchain (at /tmp/dosbox-x-latest/)
- Wine test chain: Wine → DOSBox-X → FreeDOS → LANtastic v6.0
