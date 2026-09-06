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
serial2=disabled

[ne2000]
ne2000=true
nicbase=300
nicirq=3
macaddr=AC:DE:48:88:99:AA
backend=slirp
```
- `cputype=pentium` required — NE3 uses ENTER/LEAVE/PUSHA (286+)
- `serial2=disabled` required — COM2 uses IRQ 3, conflicts with NE2000
- `backend=slirp` required — without it NIC registers return 0xFF

## NE3.EXE Probe Sequence (disassembled)
1. Read BASE+7 (ISR) — expects nonzero (0x80 = RST bit) → ✅ passes
2. Write 0 to BASE+0x0F (CNTR2) — clear tally counter → ✅ harmless
3. Read BASE+7 (ISR), AND 0x3F, write back — acknowledge reset → ✅ works
4. Set TCR.loop_cntl = 1 (internal loopback mode)
5. Start test transmit (CR.TXP)
6. Poll ISR waiting for loopback response (pkt_rx or pkt_tx) → ❌ HANGS

## Root Cause

**DOSBox-X NE2000 emulation does not support internal loopback mode.**

File: `src/hardware/ne2000.cpp` line 839:
```cpp
BX_NE2K_THIS s.TCR.loop_cntl = 0; // forces loopback OFF
```

NE3.EXE uses internal loopback for hardware validation during init.
DOSBox-X forces loop_cntl to 0 → packet never loops back → NE3
polls ISR forever.

## Fix
In `src/hardware/ne2000.cpp`:
1. Remove line 839 (`s.TCR.loop_cntl = 0`)
2. Keep line 836 (`s.TCR.loop_cntl = (value & 0x6) >> 1`) — preserve setting
3. In `write_cr()` transmit path (around line 320), when `TCR.loop_cntl == 1`:
   - Copy TX buffer to RX ring buffer
   - Set `ISR.pkt_rx = 1`
   - Raise IRQ if `IMR.rx_inte` is set
   - Set `ISR.pkt_tx = 1`
   - This matches real NE2000 internal loopback behavior

## Current Status
| Binary | DOSBox-X | Issue |
|--------|----------|-------|
| INST6.EXE | ✅ Works | Full TUI installer |
| NE3.EXE | ❌ Hangs | Loopback not supported |
| AILANBIO.EXE | ❌ Crashes | Needs NE3 loaded first |
| REDIR.EXE | ❌ Crashes | Needs AILANBIO loaded first |
| SERVER.EXE | ❌ Crashes | Needs REDIR loaded first |
| NET.EXE | ❌ Crashes | Needs REDIR loaded first |

## Next
1. Clone DOSBox-X, implement loopback fix
2. Rebuild, test NE3 → should complete init and TSR
3. Load full stack: NE3 → AILANBIO → REDIR TESTPC → NET
