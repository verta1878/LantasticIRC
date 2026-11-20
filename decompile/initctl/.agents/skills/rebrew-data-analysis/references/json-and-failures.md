# Data command JSON shapes and failure modes

`--json` prints one JSON document on **stdout** (rich tables go to stderr). Parse it
with `jq` or Python; do not parse the terminal output.

## Inventory (`--json` / `--conflicts` / `--summary`)

All three emit this inventory. `--conflicts` keeps only conflicting names in
`globals` (and recounts `summary`); `--summary` replaces `summary` with
`{"sections": [{"name", "globals", "annotated", "annotated_bytes", "section_size",
"coverage_pct"}], "conflicts"}`:

```json
{"globals": {"g_name": {"name": "g_name", "type": "int *", "va": "0x10025000",
                        "section": ".bss", "declared_in": ["server/main.c"], "annotated": true}},
 "data_annotations": [{"va": "0x10025000", "name": "g_sprite_lut", "size": 256,
                       "section": ".rdata", "note": "lookup table", "filepath": "server/main.c"}],
 "type_conflicts": [{"name": "g_count", "types": {"int": ["a.c"], "short": ["b.c"]}}],
 "summary": {"total": 42, "annotated": 10, "unannotated": 32, "data_entries": 5, "conflicts": 1},
 "sections": {".data": {"va": "0x10022000", "size": 4096}}}
```

Check `summary.conflicts > 0` to decide whether `--conflicts` needs attention.
`globals` with `"annotated": false` are plain `extern` declarations with no VA —
give them `// GLOBAL: MODULE 0xVA` markers so they resolve to a section.

## `--bss --json`

`{"bss_va", "bss_size", "known_entries": [{"name", "va", "size_hint", "source_file"}],
 "gaps": [{"offset", "size", "between": [before, after]}], "coverage_pct",
 "summary": {"total_globals", "gaps", "total_gap_bytes"}}`.

Each `gaps` entry is a likely undeclared `extern` — that is what `--fix-bss` fills.

## `--dispatch --json`

A list of tables:
`[{"va", "section", "num_entries", "resolved", "coverage", "entries": [{"target_va",
"name", "status"}]}]`. `status` is `EXACT`/`RELOC`/`NEAR_MATCHING`/`STUB` or `""`
(unknown). Low `coverage` means the table's targets have no reversed source yet —
good next-matching candidates.

## Failure modes

| Symptom | Cause | Fix |
|---|---|---|
| `rebrew-project.toml not found` / config error | Running outside a project | `cd` into the project (config discovery walks up to `rebrew-project.toml`) |
| `target binary not found` / `could not be parsed (needed for --dispatch)` | Binary missing or unparseable | Fix `target_binary` in `rebrew-project.toml`; only `--dispatch` hard-requires the binary (plain scans degrade gracefully) |
| `already exists. Use --force to overwrite.` | `--gen-header` clobber guard | Pass `--force`, or `--gen-header-out` to a new path |
| `No annotated BSS globals — nothing to verify` | No `// GLOBAL:`/`extern` with a `.bss` VA | Add annotations first, then re-run `--bss` |
| Gap size looks wrong | `size_hint` is estimated from the C type (int=4, char=1, …) | Verify the declared types of the globals on either side of the gap |
| Small gaps not reported | Gaps < 4 bytes are alignment padding and intentionally ignored | Ignore; only ≥ 4-byte gaps are flagged |
