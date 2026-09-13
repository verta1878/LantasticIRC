# KD3 wINSTALL V3.22 — Overlay Format

## EXE Structure
```
Offset      Size      Content
0x0000      512       MZ DOS header (e_ovno=32)
0x0200      119,105   Base segment (overlay loader + CRT + manager)
0x1D341     316,031   Overlay code (47 functions with preamble)
```

## MZ Header Key Fields
- e_ovno = 32 (overlay count)
- e_cs:e_ip = 0000:0003 (entry in base segment)
- e_crlc = 1 (single relocation in base)
- Base paragraph count: 0x1D02 (stored at entry+0x0A)

## Overlay Function Preamble
Every overlay function starts with 4 bytes BEFORE the standard prologue:
```asm
8C D8     MOV AX,DS      ; save current DS
90        NOP             ; padding
45        INC BP          ; mark BP as ODD = overlay function
55        PUSH BP         ; standard prologue
8B EC     MOV BP,SP
1E        PUSH DS         ; save DS (76 functions do this)
8E D8     MOV DS,AX      ; restore DS from saved value
```
The INC BP marks the stack frame so the overlay manager knows
to do overlay cleanup on function return. Standard (non-overlay)
functions have even BP.

## Function Return
```asm
1F        POP DS          ; restore DS
5D        POP BP          ; restore BP (now odd)
4D        DEC BP          ; make BP even again
CB        RETF            ; far return
```
The sequence `5D 4D CB` (pop bp; dec bp; retf) is the overlay return.

## Overlay Segments
47 preambled functions found (not 32 as e_ovno suggests).
Multiple functions share the same overlay segment.
The 32 segments each contain 1-15 functions.

## Far Calls Between Overlays
```
9A offset_lo offset_hi 00 00
```
Segment field = 0000, patched at load time by overlay manager.
660 far calls with segment=0000 in the overlay area.

## Segment Table
Location: inside base segment (not yet mapped).
Format: TBD — maps overlay segment numbers to file offsets.

## Copyright Strings
```
"Knowledge Dynamics wINSTALL - Software Installation Utility
 Copyright (c) 1993 Knowledge Dynamics Corp. All rights reserved.
 Artisoft Install V3.22.30 -- Enhanced portions Copyright (c) 1994
 Artisoft, Inc."
```

## Related
- EXETYPE, EXENAME=WINSTALL, KERNEL, USER references in base
- INSTALL.DAT = 184K install script (wINSTALL scripting language)
- NOS6.001-004 = RR archive files with LZH-compressed payloads
