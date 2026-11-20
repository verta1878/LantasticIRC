# LANtastic v6.0 Binary Classification

## Summary
- 58 EXE + 8 COM = 66 executables
- 43 DOS MZ, 14 Windows 3.x NE, 1 OS/2 NE, 8 COM

## Compiler Identification

### Hand-written ASM / Custom Toolchain (no compiler strings)
Core stack (self-relocating, 0 relocations):
- NE3.EXE, AILANBIO.EXE, REDIR.EXE, SERVER.EXE, NET.EXE
- NET_MGR.EXE, RPS.EXE, LANCHECK.EXE, LANCACHE.EXE
- LANPUP.EXE, ALONE.EXE, LDU-MGR.EXE, MPORT.EXE
- NBSETUP.EXE, NRSETUP.EXE, NRMOVE.EXE, TOKROUTE.EXE, UPS.EXE
- FFRPL.EXE

NIC drivers (self-relocating, 0 relocations):
- NEX000.EXE, WD8003.EXE, 3C503MM.EXE, 3COM507.EXE, 3COM523.EXE
- AEX.EXE (=AE2.EXE), NR.EXE, AI-NDIS.EXE

NIC drivers (standard MZ, 30-38 relocations):
- ARCNET.EXE, SMCARC.EXE, TCARC.EXE, TLINK.EXE, CSPPORT.EXE

LANBIOS variants (standard MZ, 78-151 relocations):
- LANBIOS.EXE, LANBIOS2.EXE, LANBIOS3.EXE

Other (standard MZ with relocations):
- LED.EXE (261 relocs), PE.EXE (37 relocs)

### Borland C++ 3.1
- INITCTL.EXE (34KB, 1 reloc) — confirmed "Borland C++ - Copyright 1991"
- ARTIDOCS.EXE (14KB, 382 relocs) — Borland linker
- RTM.EXE (109KB, 129 relocs) — Borland Runtime Manager

### Microsoft C
- SETNAME.EXE (23KB) — "Microsoft" string found
- PROTMAN.EXE (14KB, 3 relocs) — MS LAN Manager Protocol Manager

### Windows 3.x NE (14 binaries)
WNET.EXE (399KB), WNET_MGR.EXE (426KB), WMGRCTRL.EXE (111KB),
WASCHED.EXE (210KB), WAMAIL.EXE (65KB), NMF.EXE (122KB),
LINKBOOK.EXE (246KB), INITCTLW.EXE (35KB), MKWGROUP.EXE (17KB),
FAXSPOOL.EXE (17KB), AMEXTRA.EXE (8KB), WPRSPD.EXE (8KB),
WSVRSPD.EXE (8KB), WMTAEXEC.EXE (19KB)

### OS/2 NE (1 binary)
- MTAEXEC.EXE (12KB)

### COM files (8)
NETBIND.COM, DRVR8530.COM, IPXODI.COM, LSL.COM, NRODI.COM,
ODINSUP.COM, PATCC.COM, PROBE.COM

## Architecture Groups

### Self-relocating (0 relocations, PSP[0x0C] relocation)
28 binaries. Uses the Artisoft self-relocation trick: the MZ has 0 
relocations. The executable relocates itself at load time using
the PSP terminate address (PSP[0x0C]) as the relocation base.
Entry point at high CS (e.g., 0506:0010 for AILANBIO).

### Standard MZ with relocations
15 binaries. Normal DOS MZ executables with standard segment fixups.
These include both hand-ASM (LANBIOS, LED) and compiled (INITCTL, RTM).

### FBOV Overlays
None found. No binaries use Borland VROOMM overlay manager.
