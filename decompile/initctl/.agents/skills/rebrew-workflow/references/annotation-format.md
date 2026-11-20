# Annotation Format Reference

## What goes in the `.c` file

The `.c` file contains **only the marker line** — stable identity that never changes:

```c
// FUNCTION: SERVER 0x10008880

int __cdecl bit_reverse(int x)
{
    return x;
}
```

For library functions:

```c
// LIBRARY: SERVER 0x10023714
// SOURCE: ENVIRON.C

int stub(void) { return 0; }
```

For stubs:
```c
// STUB: SERVER 0x1002dead

int stub(void) { return 0; }
```

> [!CAUTION]
> **Never manually edit `rebrew-functions.toml`.** All volatile metadata (STATUS, SIZE, CFLAGS,
> BLOCKER, NOTE, GHIDRA, …; full key list in the SKILL.md caution) is managed exclusively by Rebrew CLI tools:
> - `rebrew test` → STATUS (auto-promotes on EXACT/RELOC; use `--no-promote` to skip)
> - `rebrew blocker set/clear` → BLOCKER / BLOCKER_DELTA (ad-hoc; for STUBs diff cannot classify)
> - `rebrew diff --fix-blocker` / `rebrew near-diag --fix-blocker` → BLOCKER / BLOCKER_DELTA (auto-classified)
> - `rebrew document-unmatched` → STUB skeletons + BLOCKER for every unmatched function
> - `rebrew sync --pull --state-dir <dir>` → NOTE, GHIDRA

## What goes in `rebrew-functions.toml` metadata file

```toml
["SERVER.0x10008880"]
status = "EXACT"
size = 31

["SERVER.0x10023714"]
status = "STUB"
size = 103
cflags = "/O1"
blocker = "missing CRT internals"
source = "ENVIRON.C"
```

The metadata file lives at `cfg.metadata_dir` (the parent of `reversed_dir` — e.g. `src/`
for sources under `src/main/`). There is no walk-up: tools must be passed the correct
metadata root. This includes **`rebrew lint`**,
which reads the metadata file before validation so that STATUS, SIZE, CFLAGS etc. are accessible
even when not present inline.

## Status Progression

STUB -> NEAR_MATCHING -> RELOC -> EXACT
           \-> PROVEN (via rebrew prove)

Managed via `rebrew test` (auto-promotes). Never edit STATUS by hand.

## Multi-Target

Same function body, multiple marker lines:

```c
// FUNCTION: LEGO1 0x1009a8c0

// FUNCTION: BETA10 0x101832f7
void my_func() {}
```

Each target has its own metadata file entry, keyed by `MODULE.0xVA`:

```toml
# A single rebrew-functions.toml at cfg.metadata_dir (e.g. src/ for src/main/):
["LEGO1.0x1009a8c0"]
status = "EXACT"
size = 42

["BETA10.0x101832f7"]
status = "NEAR_MATCHING"
size = 42
blocker = "register allocation"
```

Using qualified keys prevents collision if two targets ever happen to share
the same VA (which can occur when multiple DLLs are compiled from the same
base address). The key format directly mirrors the `// FUNCTION: MODULE 0xVA`
marker line.

Shared files live under `src/shared` (one marker per target, per-target
`STATUS`). Shared headers live there too: a shared source finds them by
bare name (the shared root is on the include path). Move a per-target file
there with `rebrew cross-import --from <src> --promote`; import with
`--shared` instead of copying.

## Data Annotations

DATA/GLOBAL metadata lives in a **`rebrew-data.toml` metadata file** — the data
analogue of `rebrew-functions.toml`. Only the stable marker line stays in
the `.c` file:

**`.c` file:**
```c
// DATA: SERVER 0x10025000

const unsigned char g_sprite_lut[256] = { ... };
```

**`rebrew-data.toml`** (auto-managed, lives at `cfg.metadata_dir`):
```toml
["SERVER.0x10025000"]
name    = "g_sprite_lut"      # preferred label (BinSync/IDA import target)
size    = 256
section = ".rdata"
note    = "lookup table for sprite indices"
```

> [!NOTE]
> `name` is the primary Ghidra interop field. When `rebrew sync --pull --state-dir <dir>`
> receives a renamed data label from Ghidra it writes the name here (not inline).

> [!CAUTION]
> **Never manually edit `rebrew-data.toml`.** It is managed automatically by
> `rebrew data`, `rebrew data --fix-bss`, and `rebrew sync --pull --state-dir <dir>`.

## Global Annotations

```c
// GLOBAL: SERVER 0x10050000
extern int g_frame_counter;
```

Metadata (size, section, note, name) goes in `rebrew-data.toml` — same format as DATA.
