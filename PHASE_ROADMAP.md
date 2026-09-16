# LANtastic — GPLv3 Source Recovery
## the crew 4free
## "NetSerial is for Mike, Doorway is for the BBS, LANtastic is for me"

### LICENSE
GPLv3 — free for personal use, not commercial.
Reverse engineering permission granted by owner.

### ARCHIVE CONTENTS — FULL INVENTORY
1,635 files, 145MB total.

#### VERSIONS FOUND
1. **LANtastic 8.01** (LANt801/) — 1998, Artisoft's final release
   - DOS NOS (2 disks: NOS80.001/002)
   - Win3x client (3 disks: LANTASTI.1/2/3)
   - Win9x client (3 disks: INSLIB9X.1/2/3)
   - WinNT client (INSLIB32.1, 2MB)
   - OS/2 support tools (PMNETMGR, PMLTCHAT, server DLLs)
   - NIC drivers (7 families)
   - Autorun CD browser (DEMO.EXE/DEMO32.EXE)
   - 30+ PDF manuals

2. **LANtastic 8.01 alt packaging** (lantOLD/)
   - Same DOS NOS (identical NOS80.001/002)
   - Same WinNT installer (identical INSLIB32.1)
   - DIFFERENT manual PDFs (different file sizes — older or updated versions)
   - NT2KXP/ directory (NT/2000/XP branding)
   - 9xMe/ directory (Win9x/ME branding)
   - Win3x (3 disks: LANTASTI.1/2/3)

3. **LANtastic 6.0 with Artisoft Exchange** (4 floppy images)
   - 1-4.IMG: Disk 1 — INSTALL.EXE (435KB), NOS.001 (534KB), INSTALL.DAT, ADF
   - 2-4.IMG: Disk 2 — NOS.002 (1.2MB)
   - 3-4.IMG: Disk 3 — NOS.003 (1.0MB)
   - 4-4.IMG: Disk 4 — NOS.004 (416KB)
   - Total NOS: ~3.2MB across 4 disks
   - OLDER VERSION — different NOS format (.001-.004 vs NOS80.001/002)
   - Includes Artisoft Exchange (email/messaging)

4. **WordPerfect FaxDirect for MS-DOS** (1 floppy image)
   - INSTALL.EXE (33KB), FAXDIR.S01 (102KB)
   - EXPVCD.386 (12KB — VxD driver!)
   - EXPCOMM.DRV (10KB — comm driver)
   - Fax modem redirection over LANtastic network

5. **Self-extracting installers**
   - lant-801.exe (5.5MB) — contains 9xMe/ + NT2kXP/ paths
   - lantastic_801.exe (18.2MB) — LANtastic branded
   - LANtastic801Complete.exe (35.1MB) — full Artisoft/Eng/LANtasti/ tree

6. **PC Micro website mirror** (site/, 142 files)
   - pcmicro.com/lantastic/ — download pages, guides, order forms
   - All PDF manuals duplicated for web download

7. **Support documentation** (Support/)
   - All user manuals (DOS, Win3x, Win9x, WinNT)
   - Hardware guide, beginner's guide, troubleshooting
   - TN1000.htm — tech note
   - walkthrough.doc — setup walkthrough

---

## Phase A — v6.0 DOS NOS Recovery (CURRENT)

### DONE
- [x] v6.0 floppy images extracted (NOS.001-004)
- [x] 245 binaries cataloged in bin/
- [x] 5 core binaries Ghidra'd: NE3, NEX000, AILANBIO, REDIR, SERVER
- [x] NE3 self-relocation formula traced: `PSP + 0xDA10 + 0xE8 + PSP[0x0C]`
- [x] Compiler identified for v6.0 binaries
- [x] 8 diagnostic COM tools built (READISR, READMAC, NE3DBG, NE3TEST, IRQTEST, CHK2F, PSPDUMP, MEMWASTE)
- [x] DOSBox-X cross-compiled from latest source (Jun 2026, commit 0e5c2f9)
- [x] Patch 1: NE2000 loopback fix (ne2000.cpp)
- [x] Patch 2: INT 21h stub address 0x0050→0x0070 (shell_misc.cpp)
- [x] Patch 3: top-of-memory COMMAND.COM (upstream, PSP=0x9F65 confirmed)
- [x] INT 6 skip fix (callback.cpp — non-LTO CPU core workaround)
- [x] SLIRP networking ported (31-function glib compat layer, libslirp from source)
- [x] Mic hang fix (recording=false)
- [x] Wine test PASS — zero fatal errors, DOS prompt reached
- [x] Project structure synced with GitHub repo

### TODO — A1: Verify Environment (Wine + DOSBox-X)
- [ ] Boot DOSBox-X under Wine → confirm DOS prompt
- [ ] Run PSPDUMP → verify PSP[0x0C] = 0x0070
- [ ] Run MEMWASTE → verify free conventional memory >530KB
- [ ] Confirm NE2000 init in log (nicbase=300, irq=3)
- [ ] Confirm SLIRP init in log

### TODO — A2: Core Stack Test (6 binaries, 323KB)
Load order matches real LANtastic boot sequence:
- [ ] NE3.EXE (9KB) — NIC driver, self-relocates using PSP[0x0C]
- [ ] NEX000.EXE (10KB) — NIC exerciser, verify NE2000 loopback
- [ ] AILANBIO.EXE (22KB) — LANA BIOS, hooks INT 5Ch
- [ ] REDIR.EXE (94KB) — DOS redirector, hooks INT 21h/2Fh
- [ ] SERVER.EXE (169KB) — file/print server
- [ ] NET.EXE (20KB) — command-line tool (NET USE, NET SHARE, etc.)
- [ ] Full chain: NE3→AILANBIO→REDIR→SERVER → then NET USE test

### TODO — A3: LANBIOS Variants (3 binaries, 66KB)
- [ ] LANBIOS.EXE (20KB) — compare to AILANBIO
- [ ] LANBIOS2.EXE (21KB) — identify differences
- [ ] LANBIOS3.EXE (26KB) — identify differences
- [ ] Document which LANBIOS variant is used when

### TODO — A4: NIC Drivers (10 binaries, 94KB)
- [ ] NEX000.EXE (10KB) — NE2000 compatible (our primary)
- [ ] WD8003.EXE (10KB) — Western Digital / SMC
- [ ] 3C503MM.EXE (9KB) — 3Com EtherLink II
- [ ] 3COM507.EXE (9KB) — 3Com EtherLink 16
- [ ] 3COM523.EXE (9KB) — 3Com EtherLink/MC
- [ ] ARCNET.EXE (8KB) — ARCnet adapter
- [ ] SMCARC.EXE (8KB) — SMC ARCnet
- [ ] TCARC.EXE (8KB) — Thomas-Conrad ARCnet
- [ ] TLINK.EXE (8KB) — Thomas-Conrad Token Ring
- [ ] CSPPORT.EXE (14KB) — serial port adapter

### TODO — A5: Support Tools (14 binaries, 434KB)
- [ ] LANCHECK.EXE (30KB) — network diagnostics
- [ ] LANCACHE.EXE (19KB) — disk cache for network
- [ ] LANPUP.EXE (12KB) — pop-up messaging
- [ ] ALONE.EXE (34KB) — standalone mode
- [ ] AEX.EXE (11KB) — adapter exerciser
- [ ] AE2.EXE (11KB) — adapter exerciser v2
- [ ] LED.EXE (70KB) — LANtastic editor
- [ ] INITCTL.EXE (35KB) — init control
- [ ] INITCTLW.EXE (35KB) — init control (Windows)
- [ ] NMF.EXE (122KB) — network message facility
- [ ] NR.EXE (12KB) — NodeRunner utility
- [ ] NRMOVE.EXE (4KB) — NodeRunner mover
- [ ] NRSETUP.EXE (35KB) — NodeRunner setup
- [ ] NBSETUP.EXE (5KB) — NetBIOS setup

### TODO — A6: COM Drivers (8 files, 125KB)
- [ ] NETBIND.COM (8KB) — NDIS protocol bind
- [ ] DRVR8530.COM (5KB) — 8530 serial driver
- [ ] IPXODI.COM (30KB) — IPX over ODI
- [ ] LSL.COM (18KB) — Link Support Layer (Novell ODI)
- [ ] NRODI.COM (21KB) — NodeRunner ODI driver
- [ ] ODINSUP.COM (34KB) — ODI-to-NDIS bridge
- [ ] PATCC.COM (9KB) — patch utility
- [ ] PROBE.COM (353B) — hardware probe

### TODO — A7: Installer & Archive Format
- [ ] Recover INSTALL.EXE (435KB — v6.0 installer)
- [ ] Document NOS.001-004 archive format (LZH variant)
- [ ] Build nosextract tool (wdksdk/tools/)
- [ ] Verify extracted files match bin/ contents

### TODO — A8: Decompile & Bytematch
- [ ] Ghidra decompile all A2 core stack binaries
- [ ] Ghidra decompile all A4 NIC drivers
- [ ] Ghidra decompile all A5 support tools
- [ ] Bytematch each decompiled binary against original
- [ ] Document compiler/linker for each binary

### TODO — A9: Protocol Documentation
- [ ] Document TSR memory hooks (INT 21h, 2Fh, 5Ch, 60h)
- [ ] Document NE2000/NE3 packet format
- [ ] Document LANA BIOS API (INT 5Ch interface)
- [ ] Document NET.EXE command syntax
- [ ] Document server/redirector protocol

## Phase B — Documentation Extraction
- [ ] Extract all 30+ PDF manuals (both LANt801 and lantOLD versions)
- [ ] Compare manual versions (different file sizes = different editions)
- [ ] Parse walkthrough.doc
- [ ] Archive pcmicro.com website mirror
- [ ] Extract help files (.HLP) — DOS and Windows
- [ ] Extract TN1000.htm tech note
- [ ] Document NetBIOS protocol (SMB variant or custom?)
- [ ] Document Artisoft proprietary protocols
- [ ] Map full API surface (NETAPI.DLL, server DLLs)
- [ ] Document .ADF adapter definition file format

## Phase C — DOS NOS v8.01 Recovery
The DOS Network Operating System is the heart of LANtastic.
**NOT STARTED — v6.0 must be fully restored first.**
- [ ] Extract NOS80.001 + NOS80.002 archives
- [ ] Compare v6.0 vs v8.01 binaries — identify evolution
- [ ] Identify all DOS TSR components (redirector, server, AILANBIO)
- [ ] Disassemble INSTALL.EXE (227KB — DOS installer)
- [ ] Disassemble AILANBIO.EXE (21KB — Artisoft LANA BIOS)
- [ ] Disassemble SUPPORT.EXE (166KB — support/diagnostics)
- [ ] Disassemble NET.EXE (96KB — NET command-line tool)
- [ ] Disassemble DOSNET.EXE (20KB — DOS network manager)
- [ ] Identify TSR memory model (conventional + UMB)
- [ ] Map INT 21h/2Fh hooks (DOS redirector)
- [ ] Map INT 5Ch hooks (NetBIOS interface)
- [ ] Recover NOS kernel: server, redirector, print queue
- [ ] Recover network adapter interface layer
- [ ] Recover account/password management
- [ ] Build with MASM/TASM + DOS C compiler

## Phase D — DOSBox-X Emulation Environment — DONE ✅
- [x] Cross-compile DOSBox-X for Windows (latest source, Jun 2026)
- [x] NE2000 loopback patch
- [x] INT 21h stub address fix (0x0050→0x0070)
- [x] Top-of-memory COMMAND.COM (upstream)
- [x] INT 6 skip fix (non-LTO workaround)
- [x] SLIRP networking (glib compat layer, 31 functions)
- [x] Static binary, no external DLLs
- [x] Wine test pass
- [x] Cross-compile docs (BUILD_DOSBOXX_CROSSCOMPILE.md)
- [x] SLIRP compat docs + source (toolchain/slirp-compat/)

## Phase E — DOS Support Tools Recovery
- [ ] AEX.EXE (10KB — adapter exerciser)
- [ ] LANCHECK.EXE (34KB — network diagnostics)
- [ ] NEX000.EXE (9KB — NIC exerciser)
- [ ] NPRO.EXE (13KB — NodeRunner Pro utility)
- [ ] NPROSET.EXE (123KB — NodeRunner Pro setup)
- [ ] NR.EXE (11KB — NodeRunner utility)
- [ ] NRSETUP.EXE (39KB — NodeRunner setup)
- [ ] PUP.EXE (26KB — pop-up utility)
- [ ] REPLACE.EXE (25KB — file replacement tool)
- [ ] SRVDOWN.EXE (17KB — server shutdown)
- [ ] NETSTUB.EXE (615B — network stub loader)
- [ ] SERVER.EXE (5KB — server launcher)

## Phase F — FaxDirect Recovery
- [ ] INSTALL.EXE (33KB — FaxDirect installer)
- [ ] FAXDIR.SPN + FAXDIR.S01 (102KB — fax data)
- [ ] EXPVCD.386 (12KB — VxD virtual comm driver)
- [ ] EXPCOMM.DRV (10KB — Windows comm driver)
- [ ] Document fax-over-network protocol
- [ ] Recover VxD driver source

## Phase G — Windows 3.x Recovery
- [ ] Extract Win3x installer (3 disks, InstallShield)
- [ ] Compare LANt801 vs lantOLD Win3x installers
- [ ] Identify all Win16 NE binaries
- [ ] Recover LTWORKER.DLL (75KB — LANtastic worker)
- [ ] Recover LTDAEMON.EXE (19KB — background daemon)
- [ ] Recover DOSNET.MNU (87KB — DOS network menu)
- [ ] Build with Win16 SDK (MSVC 1.5x or Borland)

## Phase H — Windows 9x Recovery
- [ ] Extract Win9x installer (3 disks, InstallShield)
- [ ] Compare LANt801 vs lantOLD 9xMe installers
- [ ] Identify VxD drivers (.386 files)
- [ ] Recover LCHECK32.EXE (172KB — 32-bit LAN checker)
- [ ] Recover Win9x network provider
- [ ] Map NDIS 3.x/4.x miniport interface
- [ ] Recover printer redirection
- [ ] Build with MSVC 4.x/5.0 + Win95 DDK

## Phase I — Windows NT Recovery
- [ ] Extract WinNT installer (InstallShield, 2MB INSLIB32.1)
- [ ] Compare LANt801 Winnt/ vs lantOLD NT2KXP/
- [ ] Identify kernel-mode drivers (.SYS)
- [ ] Recover NT network provider DLL
- [ ] Recover NT redirector (kernel filesystem driver)
- [ ] Recover NT server service
- [ ] Map NT NDIS miniport interface
- [ ] Build with MSVC + NT 4.0 DDK

## Phase J — OS/2 Recovery
- [ ] Catalog all OS/2 binaries (125 files)
- [ ] PMNETMGR.EXE (344KB — PM network manager, largest OS/2 binary)
- [ ] PMNET.EXE (133KB — PM network)
- [ ] PMLTAUD.EXE (67KB — PM audit viewer)
- [ ] PMLTCFG.EXE (37KB — PM config)
- [ ] PMLTCHAT.EXE (51KB — PM chat)
- [ ] PMLTSEND.EXE (38KB — PM message sender)
- [ ] PMLTSRV.EXE (42KB — PM server)
- [ ] OS2LPI.DLL (34KB — OS/2 LAN provider interface)
- [ ] OS2SP1.EXE (840KB — OS/2 service pack 1)
- [ ] NEWIFS.EXE (85KB — OS/2 Installable File System driver)
- [ ] AI-NDIS.OS2 (15KB — Artisoft NDIS OS/2 driver)
- [ ] IFS2NB.OS2 (4KB — IFS to NetBIOS bridge)
- [ ] Server DLLs: SRVCORE (69KB), SRVLIB (67KB), SRVSNB (33KB),
      SRVPRINT (20KB), SRVAUDIT (3KB), SRVCONFG (4KB),
      SRVNOTFY (4KB), SRVRACCT (5KB) — 8 DLLs total
- [ ] Build with IBM C Set++ or Watcom + OS/2 Toolkit

## Phase K — Network Driver Recovery
7 NIC families × multiple platforms:
- [ ] Et32p — Artisoft Ethernet 32P PCI
- [ ] KTIET16P — KTI ET16P ISA (34KB NT driver)
- [ ] KTI221TX — KTI 221TX PCI (DEC Tulip 21x4, 54KB NT driver)
- [ ] KTI230TX — KTI 230TX PCI (RTL8139, 25KB NT driver)
- [ ] NDC-4300 — NDC 4300 ISA (26KB NT driver)
- [ ] NPRO — Intel EtherExpress Pro
- [ ] ISHR-KIT — Generic ISA NIC kit
- [ ] Each NIC has: DOS, NDIS, ODI, Packet, WFW, Win95, WinNT, OS/2 drivers
- [ ] NIC-ID.PDF — NIC identification guide
- [ ] DRIVERS.ZIP — additional drivers archive
- [ ] Boot ROM images for diskless workstations

## Phase L — Protocol & API Recovery
- [ ] Document LANtastic NetBIOS extensions
- [ ] Document Artisoft proprietary SMB dialect
- [ ] Recover NETAPI.DLL (32KB — network API library)
- [ ] Recover NET.EXE command syntax (NET USE, NET SHARE, etc.)
- [ ] Document Artisoft Exchange mail/messaging protocol
- [ ] Document chat protocol (PMLTCHAT, PMLTSEND)
- [ ] Document print queue protocol
- [ ] Document audit logging format
- [ ] Document account database format (.ACT files)
- [ ] Create protocol specification document

## Phase M — Autorun CD Browser Recovery
- [ ] DEMO.EXE (326KB — 16-bit CD browser)
- [ ] DEMO32.EXE (364KB — 32-bit CD browser)
- [ ] DS.DLL (11KB — data source 16-bit)
- [ ] DS32.DLL (28KB — data source 32-bit)
- [ ] Autorun.dbd (400KB — CD database)
- [ ] SETUP.EXE (15KB — CD setup launcher)

## Phase N — Build System & Testing
- [ ] Set up cross-compilation for each platform:
  - DOS: MASM 6.x + Borland/Microsoft C
  - Win16: MSVC 1.5x + Win 3.1 SDK
  - Win9x: MSVC 4.x + Win95 DDK (VxDs)
  - WinNT: MSVC + NT 4.0 DDK
  - OS/2: IBM C Set++ or Watcom + OS/2 Toolkit
- [ ] Test on real hardware: DOS 6.22, Win 3.11, Win95, Win98, NT 4.0, OS/2 Warp
- [ ] Validate peer-to-peer networking between platforms
- [ ] Test file sharing, print sharing, chat, mail, audit
- [ ] Test with each of the 7 NIC families

## Phase O — Modern Port (future)
- [ ] TCP/IP transport layer (original uses NetBEUI/NetBIOS)
- [ ] Modern NIC support (USB Ethernet, WiFi via bridge)
- [ ] Virtual machine testing (DOSBox, QEMU, VirtualBox, 86Box)
- [ ] Documentation website
- [ ] Package for retro computing community

---

### COMPONENT INVENTORY

| Component | Platform | Key Binaries | Est. Code |
|-----------|----------|-------------|-----------|
| DOS NOS v8.01 | DOS | INSTALL, NET, AILANBIO, NOS kernel | ~1.5MB |
| DOS NOS v6.0 | DOS | INSTALL, NOS.001-004 | ~3.2MB |
| FaxDirect | DOS/Win3x | EXPVCD.386, EXPCOMM.DRV | ~125KB |
| DOS Support | DOS | 12 utilities | ~600KB |
| Win3x Client | Win16 | LTWORKER, LTDAEMON, installer | ~500KB |
| Win9x Client | Win32 | LCHECK32, installer | ~2MB |
| WinNT Client | Win32 | installer, drivers | ~2MB |
| OS/2 Suite | OS/2 PM | 7 PM apps, 8 server DLLs, IFS | ~1.5MB |
| NIC Drivers | Multi | 7 families × 7+ platforms | ~2MB |
| CD Browser | Win16/32 | DEMO, DEMO32, database | ~800KB |
| Manuals | PDF | 30+ documents, 2 versions | ~15MB |
| Website | HTML | 142 files | ~5MB |

**Estimated total code to recover: ~12MB across 176+ binaries, 5 platforms**

### SCALE COMPARISON
| Project | Binaries | Total Code | Platforms | Status |
|---------|----------|-----------|-----------|--------|
| NetSerial 4.40 | 5 | ~300KB | Win2K+ | 99.96% driver |
| NetSerial 3.61 | 5 | ~310KB | Win2K+ | 100% driver |
| LANtastic 8.01 | 176+ | ~12MB | DOS/Win16/9x/NT/OS2 | Phase A |

**LANtastic is ~40x the size of both NetSerials combined.**

### PRIORITY ORDER
1. DOS NOS v6.0 (Phase A — CURRENT — must be fully restored first)
2. DOS NOS v8.01 (Phase C — after v6.0 is done)
3. DOS Support Tools
4. FaxDirect (unique — fax over network)
5. Win9x Client (most users)
6. WinNT Client (modern relevance)
7. Win3x Client (historical)
8. OS/2 Suite (complete but niche — 125 files!)
9. NIC Drivers (platform-specific)
10. CD Browser (nice to have)
11. Protocol Documentation
12. Modern Port (future)
