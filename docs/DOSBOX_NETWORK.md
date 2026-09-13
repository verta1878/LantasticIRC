# LANtastic v6 Network Stack — DOSBox-X Emulation

## Stack Order
```
NE3.EXE → AILANBIO.EXE → REDIR.EXE → SERVER.EXE → NET.EXE
(NIC drv)  (NETBIOS)      (client)    (file srv)   (CLI)
```

## Working DOSBox-X Config
```ini
[cpu]
cputype=pentium
cycles=10000
core=normal

[serial]
serial2=disabled          # COM2 uses IRQ 3, conflicts with NE2000

[ne2000]
ne2000=true
nicbase=300
nicirq=3
macaddr=AC:DE:48:88:99:AA
backend=slirp             # Required — without it NIC returns 0xFF
```

## NE2000 Register State (verified with PROBE.COM)
```
ISR (BASE+7): 0x80     ← RST bit set ✅
CR  (BASE+0): 0x21     ← Stop, abort DMA ✅
Reset port:   0x01     ← Valid (patched — stock returns 0)
Regs 0x0A-0B: 0xFF     ← Tally counters
All others:   0x00
```

## Bugs Found in DOSBox-X ne2000.cpp

### Bug 1: Reset port read triggers full reset
**File:** `src/hardware/ne2000.cpp`, `asic_read()`, case 0xf
**Problem:** Reading BASE+0x1F calls `reset(BX_RESET_SOFTWARE)`,
wiping all NIC configuration. Real NE2000 just returns a value.
**Binary patch:** NOP the vtable call at offset 0x5c2923 (FF 50 18 → 90 90 90),
change return value from 0 to 1 (31 C0 → B0 01 at 0x5c2926).
**Source fix:** Remove `theNE2kDevice->reset(BX_RESET_SOFTWARE)` from
`asic_read()` case 0xf. Set `retval = 0x01`.

### Bug 2 (potential): Loopback mode disabled
**File:** `src/hardware/ne2000.cpp`, line ~855
**Comment:** "the loopback mode is not supported yet"
**Note:** The loopback IMPLEMENTATION exists (lines 320-334) and works.
The TCR.loop_cntl value IS preserved correctly in the if/else at lines 835-840.
May not be the current blocking issue.

## NE3.EXE Probe Status
- ISR check: ✅ passes (0x80 = RST bit set)
- Reset sequence: ✅ works with patch
- Register reads: ✅ all return valid values
- **Still hangs** after initial probe — likely during MAC read,
  DMA configuration, or interrupt setup
- Needs further I/O tracing to find exact failure point

## Current Status
| Binary | DOSBox-X | Issue |
|--------|----------|-------|
| INST6.EXE | ✅ Works | Full TUI installer |
| PROBE.COM | ✅ Works | Shows NE2000 registers correctly |
| NE3.EXE | ❌ Hangs | Passes initial probe, hangs later |
| AILANBIO.EXE | ❌ Crashes | Needs NE3 loaded first |
| REDIR.EXE | ❌ Crashes | Needs AILANBIO loaded first |
| SERVER.EXE | ❌ Crashes | Needs REDIR loaded first |
| NET.EXE | ❌ Crashes | Needs REDIR loaded first |

## Patch Files
- `bin/PROBE.COM` — NE2000 register probe tool (353 bytes, NASM)
- Hex patch for stock DOSBox-X 2024.03.01:
  - Offset 0x5c2923: FF 50 18 → 90 90 90 (NOP reset() call)
  - Offset 0x5c2926: 31 C0 → B0 01 (return 1 instead of 0)
  - Offset 0x5c26ba: 41 C6 45 74 00 → 90 90 90 90 90 (NOP loop_cntl=0)
