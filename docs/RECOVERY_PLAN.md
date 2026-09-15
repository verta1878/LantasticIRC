# LANtastic v6 Recovery Plan

## Phase 0: Binary Extraction (CURRENT)
- [x] Acquire v6 floppy images (4 disks, 1.44MB each)
- [x] Inventory all 232 files in NOS.001-004 archives
- [x] Ghidra decompile INSTALL.EXE (712 functions) to find decompressor
- [x] Partially reverse-engineer RR archive header format
- [ ] Implement RR decompressor in Python
- [ ] Extract all binaries to v6_binorg/

## Phase 1: Ghidra Decompilation
- [ ] Identify compiler/toolchain from binary headers
- [ ] Ghidra headless decompile all EXE/COM/SYS files
- [ ] Raw decompiled output to v6_bytematch/
- [ ] Identify and tag third-party library code (CRT, NDIS, NetBIOS)

## Phase 2: Cleanup & Compile
- [ ] Type replacements (Ghidra types → C types)
- [ ] Pattern fixes (CONCAT, DAT_, string refs)
- [ ] Iterative compile-fix loop
- [ ] Target: 99%+ functions active (same as NetSerial)

## Phase 3: Third-Party Library Resolution
- [ ] Identify CRT functions → exclude from source
- [ ] NDIS wrapper → find GPL-compatible source or rewrite
- [ ] NetBIOS → evaluate Samba (GPLv3) or Microsoft open-source
- [ ] Document all external dependencies

## Phase 4: Licensing
- [ ] Obtain permission for GPLv3 release
- [ ] Verify all third-party components are GPL-compatible
- [ ] Strip non-GPL code, document as build dependencies

## Key Differences from NetSerial Recovery
- DOS 16-bit (segment:offset) vs Windows 32-bit
- Straight C, no MFC/C++ — cleaner Ghidra output expected
- Smaller CRT footprint than Win32 apps
- Period-correct toolchain needed (Borland/MSC, not VS2005)
- No hand-recovery branch — Ghidra byte match only
