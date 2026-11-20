---
name: rebrew-data-analysis
description: >-
  Use when working with globals, '// DATA:'/'// GLOBAL:' annotations, BSS gaps,
  dispatch tables/vtables, XX relocations or missing_globals hints in a diff,
  or cross-TU type conflicts. Triggers on 'global', 'data section', 'BSS',
  'vtable', 'dispatch table', 'bss gap', 'extern', 'type conflict',
  'rebrew data', or 'data-drift'. Not for function bodies
  (rebrew-workflow/matching) or Ghidra data pulls
  (rebrew-ghidra-sync --pull-data).
license: MIT
---

```mermaid
graph TD
    Scan[Scan globals<br/>rebrew data --json] --> Annotate[Annotate globals<br/>// GLOBAL: / // DATA: markers<br/>with SECTION metadata]
    Annotate --> Dispatch[Detect dispatch tables<br/>rebrew data --dispatch --json]
    Dispatch --> Bss{Check BSS layout<br/>rebrew data --bss --json}
    Bss -->|gaps found| FixBss[Generate bss_padding.c<br/>rebrew data --fix-bss]
    FixBss --> Extern[Add missing externs<br/>// GLOBAL: markers]
    Extern --> Bss
    Bss -->|no gaps| Header[Generate rebrew_globals.h<br/>rebrew data --gen-header]
    Header --> Lint[Lint annotations<br/>rebrew lint (W016)]
```

# Rebrew Data Analysis

Inspect global variables and detect type conflicts across translation units.

## When NOT to use this skill

- Function bodies / disassembly / matching → use `rebrew-workflow` or `rebrew-matching`
- Pulling data labels back from Ghidra → use `rebrew-ghidra-sync` (`rebrew sync --pull-data`)

## Commands

Run from the project root (config discovery walks up to `rebrew-project.toml`). Add
`--target NAME` for non-default targets in multi-target projects.

```bash
rebrew data --json                              # full inventory: globals, data_annotations, type_conflicts, summary, sections
rebrew data --summary --json                    # per-section progress: JSON `summary` becomes {sections, conflicts}
rebrew data --conflicts --json                  # only globals with type conflicts (same name, different types across files)
rebrew data --dispatch --json                   # detect dispatch tables / vtables in .data/.rdata
rebrew data --dispatch --min-table-len 5 --json # require >= 5 entries per table
rebrew data --dispatch --max-pointer-stride 8   # allow 8-byte stride between slots (sparse tables)
rebrew data --bss --json                        # verify .bss layout, detect gaps from missing externs
rebrew data --fix-bss --dry-run                 # preview bss_padding.c + metadata changes, write nothing
rebrew data --fix-bss                           # generate bss_padding.c + write SIZE/SECTION/NOTE to metadata
rebrew data --gen-header --dry-run              # preview rebrew_globals.h contents
rebrew data --gen-header                        # write rebrew_globals.h from local // GLOBAL: / // DATA: annotations (no Ghidra)
rebrew data --gen-header --gen-header-out /path/to/my_globals.h  # override output path
rebrew data --gen-header --force                # overwrite existing file without prompting
rebrew data --layout-audit --section .rdata     # per-TU span/order audit for .rdata (default .data)
rebrew verify --data --built build/main     # byte-compare built .data/.rdata per symbol (VERIFIED/DRIFT/UNCHECKED)
rebrew todo -c data-drift --json                # data symbols whose built bytes differ from the reference
```

Use `--gen-header` when working offline or before any Ghidra sync — it emits typed
`extern` declarations grouped by PE section. `rebrew sync --pull-data` overwrites
this header with Ghidra-sourced labels when available (same default path
`{reversed_dir}/rebrew_globals.h`, but `--pull-data` never prompts).

`--gen-header` refuses to overwrite an existing file without `--force`. Run
`--fix-bss` / `--gen-header` with `--dry-run` first: `--fix-bss` writes both a
source file and metadata.

JSON response shapes and failure-mode table: `references/json-and-failures.md`.

## DATA Annotations

DATA metadata lives in a **`rebrew-data.toml` metadata file** at `cfg.metadata_dir` (the parent of `reversed_dir`). There is no walk-up: callers must pass the correct metadata root.
Only the stable marker line stays in the `.c` file:

**`.c` file:**
```c
// DATA: SERVER 0x10025000

const unsigned char g_sprite_lut[256] = { ... };
```

**`rebrew-data.toml`** (auto-managed — never edit manually):
```toml
["SERVER.0x10025000"]
name    = "g_sprite_lut"      # preferred label (BinSync/Ghidra import target)
size    = 256
section = ".rdata"
note    = "lookup table for sprite indices"
```

| Field | Purpose |
|-------|---------|
| `name` | Preferred variable label — overrides C stem; written by `rebrew sync --pull --state-dir <dir>` from Ghidra |
| `size` | Size in bytes |
| `section` | PE section (`.data`, `.rdata`, `.bss`) |
| `note` | Description; written by `rebrew sync --pull --state-dir <dir>` from Ghidra comments |
| `status` | Data verdict written by `rebrew verify --data`: `VERIFIED` (built bytes match), `DRIFT` (differ), `UNCHECKED` (not compared); counted in `rebrew status` and `rebrew todo -c data-drift` |

> [!CAUTION]
> **Never manually edit `rebrew-data.toml`.** It is managed automatically by `rebrew data`,
> `rebrew data --fix-bss`, and `rebrew sync --pull --state-dir <dir>`. Entries are keyed `"MODULE.0xVA"`
> (qualified, same scheme as `rebrew-functions.toml`).

## GLOBAL Annotations

When a function references a global address from disassembly:

1. Declare the global in a source file or centralized header.
2. Annotate with `// GLOBAL: MODULE 0x<VA>` for tracking (declaration must follow on the next line).
3. Metadata (name, size, section, note) goes in `rebrew-data.toml` — same format as DATA.

`--gen-header` picks up both `// GLOBAL:` and `// DATA:` markers, merging in `name`/`size`/
`section`/`note` from `rebrew-data.toml`. `rebrew lint` flags `DATA`/`GLOBAL` markers
missing `SECTION` metadata (W016) and inline volatile keys — run it after adding markers.

## Debugging Relocation Mismatches

`~~` rows are accepted relocations (they count toward RELOC); leave them alone.
Two diff signals point at globals:

| Signal in `rebrew diff --json` | Cause | Fix |
|--------------------------------|-------|-----|
| `XX` rows (`summary` counts them as mismatches) | Relocation resolves to a catalogued global at the wrong VA: wrong name or a type conflict | Check the name in `rebrew-data.toml`; run `--conflicts` and unify the type |
| `missing_globals` hints (`[0]` operand on a `**` row) | Reference never resolved: no definition for the target address | Add `extern` + `// GLOBAL: MODULE 0x<VA>` |

### Workflow

1. `rebrew diff --json src/main/<file>.c`: note `XX` rows and `missing_globals`
2. Add the missing `extern` declarations with `// GLOBAL:` annotations
3. `rebrew data --bss --json`: gaps between known globals mean more missing externs
4. `rebrew data --fix-bss --dry-run`, then `rebrew data --fix-bss` to generate
   `bss_padding.c` (writes SIZE/SECTION/NOTE into `{metadata_dir}/rebrew-data.toml`)
5. Re-run `rebrew data --bss --json` until no gaps remain, then
   `rebrew test src/main/<file>.c --json`

## Dispatch Tables and Vtables

`rebrew data --dispatch` scans `.data` and `.rdata` sections for arrays of
function pointers. Each detected table shows:

- Table `va`, `section`, `num_entries`
- Known vs unknown function entries (`resolved` / `coverage`)
- Per-entry `target_va`, `name`, `status` (EXACT / RELOC / NEAR_MATCHING / STUB / unknown)

Tables are not labelled vtable vs dispatch table; decide from the callers.

Names come from source annotations first, then the function list / Ghidra structure
registry — so a low-coverage table usually means its targets lack reversed sources
(pick them up in `rebrew-workflow`), not that the detection failed. Tune detection
with `--min-table-len` (default 3) and `--max-pointer-stride` (default 4; raise it
for sparse tables with mixed payload entries). Use this to identify virtual method
tables that need reverse engineering.
