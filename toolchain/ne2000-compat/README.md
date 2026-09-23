# NE2000 Compatibility Patches for DOSBox-X

Drop-in replacements for DOSBox-X's NE2000 emulation that add
support for LANtastic v6.0 NIC drivers.

## Files
- `ne2000.cpp` → replace `src/hardware/ne2000.cpp`
- `ne2000.h` → replace `include/ne2000.h`

## Patches Included

1. **NE2000 loopback fix** — CR.stop + MAC filter bypass for
   loopback mode. Required for NE3.EXE to work.

2. **ASIC mirror** (offsets 0x01-0x0E) — Real NE2000 hardware
   mirrors the data register at all ASIC offsets. DOSBox-X
   returned 0, causing NEX000 (Novell driver) to fail detection.

3. **WD8003 register remap** — `nictype=wd8003` config option
   remaps 8390 registers to offset +0x10 and adds board ID
   registers at offset +0x00, matching Western Digital 8003 layout.

4. **nictype config option** — `[ne2000] nictype=ne2000|wd8003|3c503`
   selects NIC emulation mode. Requires matching property in
   `src/dosbox.cpp` (see dosbox.cpp.patch below).

## Config for nictype

Add to `src/dosbox.cpp` after the `backend` property in the
`[ne2000]` section:

```cpp
Pstring = secprop->Add_string("nictype", Property::Changeable::WhenIdle, "ne2000");
Pstring->Set_help("NIC type: ne2000 (default), wd8003, 3c503");
Pstring->SetBasic(true);
```

## Results with LANtastic v6.0 NIC Drivers

| Driver | Without Patches | With Patches |
|--------|----------------|-------------|
| NE3 | Crashes | ✅ Full stack works |
| NEX000 | Crashes DOSBox-X | Clean exit (hw not found) |
| WD8003 | Crashes DOSBox-X | Clean exit (hw not found) |
| 3C503MM | Crashes DOSBox-X | Clean exit (hw not found) |
| 3COM507 | ✅ Loads | ✅ Loads |
| 3COM523 | ✅ Loads | ✅ Loads |
| ARCNET | ✅ Loads | ✅ Loads |
| SMCARC | ✅ Loads | ✅ Loads |
| TCARC | ✅ Loads | ✅ Loads |
| TLINK | ✅ Loads | ✅ Loads |
| CSPPORT | ✅ Loads | ✅ Loads |

## License
Same as DOSBox-X (GPLv2+)
