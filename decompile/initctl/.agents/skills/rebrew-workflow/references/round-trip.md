# Round-trip splice details

`rebrew round-trip` compiles every EXACT/RELOC function, applies COFF relocations
against the function + data catalogs, splices patched bytes into a byte copy of
the target PE, SHA-256s the result, and writes `<binary>.reasm` next to the original.

```bash
rebrew round-trip --json                # splice every EXACT/RELOC function back into the PE
rebrew round-trip --dry-run             # preview without writing <binary>.reasm
rebrew round-trip --strict-catalog      # exit non-zero on unresolved catalog symbols
rebrew round-trip --filter <substr>     # only splice symbols containing this substring
rebrew round-trip --output <path>       # override output path
```

- **Every EXACT/RELOC function needs SIZE in `rebrew-functions.toml`** — a legacy
  inline-only `// SIZE:` makes round-trip report `oversize (size <= 0 in metadata)`.
  Run `rebrew lint --fix` first (dry-run with `--dry-run`).
- **`catalog_resolution_drift` with CRT names** (e.g. `_fread`): the library header
  can list both `fread` (wrapper) and `_fread` (real impl) at different VAs.
  Correct the `library_*.h` VA mapping or annotate call sites; drift is never silent.
- **Resolution fallbacks** when the catalog cannot resolve by name: Ghidra auto-names
  with trailing hex (`_g_1003546c`), MSVC `$L<N>` / `$cleanup_loop$<N>` jump tables
  mapped from the compiled .obj, and string literals whose compiled copy is a strict
  prefix of the target's. Wrong fallback → `catalog_resolution_drift`, never silent corruption.
- **PROVEN functions are skipped** (`skipped_proven`) — semantic, not byte, equivalence.
- Exit `0` = SHA-equal + no mismatches; exit `1` otherwise. Inspect JSON `reason_counts`
  and `byte_coverage`.
